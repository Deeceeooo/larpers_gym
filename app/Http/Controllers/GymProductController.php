<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GymProductController extends Controller
{
    public function index()
    {
        $products = DB::table('gym_products')->orderBy('created_at', 'desc')->get();
        $options = DB::table('gym_product_options')
            ->orderBy('id')
            ->get()
            ->groupBy('gym_product_id');

        return view('pages.page3', compact('products', 'options'));
    }

    public function show_add_form()
    {
        return view('pages.shop.add_product');
    }

    public function do_add(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'category' => 'required|in:equipment,supplement',
            'option_name' => 'required|array|min:1',
            'option_name.*' => 'required|string|max:255',
            'option_price' => 'required|array|min:1',
            'option_price.*' => 'required|numeric|min:0',
            'photo' => 'nullable|image|max:2048',
        ]);

        $filename = $this->uploadPhoto($request);

        DB::transaction(function () use ($request, $filename) {
            $productId = DB::table('gym_products')->insertGetId([
                'name' => $request->input('name'),
                'description' => $request->input('description'),
                'category' => $request->input('category'),
                'photo' => $filename,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $this->saveOptions($productId, $request->input('option_name'), $request->input('option_price'));
        });

        return redirect(url('/p3'))->with('success', 'Gym product added successfully!');
    }

    public function show_edit_form($id)
    {
        $product = DB::table('gym_products')->where('id', $id)->first();

        if (!$product) {
            abort(404);
        }

        $options = DB::table('gym_product_options')
            ->where('gym_product_id', $id)
            ->orderBy('id')
            ->get();

        return view('pages.shop.edit_product', compact('product', 'options'));
    }

    public function do_update(Request $request)
    {
        $request->validate([
            'id' => 'required|integer|exists:gym_products,id',
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'category' => 'required|in:equipment,supplement',
            'option_name' => 'required|array|min:1',
            'option_name.*' => 'required|string|max:255',
            'option_price' => 'required|array|min:1',
            'option_price.*' => 'required|numeric|min:0',
            'photo' => 'nullable|image|max:2048',
        ]);

        $filename = $request->input('old_photo');
        $newPhoto = $this->uploadPhoto($request);

        if ($newPhoto) {
            $filename = $newPhoto;
        }

        DB::transaction(function () use ($request, $filename) {
            DB::table('gym_products')->where('id', $request->input('id'))->update([
                'name' => $request->input('name'),
                'description' => $request->input('description'),
                'category' => $request->input('category'),
                'photo' => $filename,
                'updated_at' => now(),
            ]);

            DB::table('gym_product_options')->where('gym_product_id', $request->input('id'))->delete();
            $this->saveOptions($request->input('id'), $request->input('option_name'), $request->input('option_price'));
        });

        return redirect(url('/p3'))->with('success', 'Gym product updated successfully!');
    }

    public function do_delete($id)
    {
        DB::table('gym_products')->where('id', $id)->delete();

        return redirect(url('/p3'))->with('success', 'Gym product deleted!');
    }

    private function uploadPhoto(Request $request): ?string
    {
        if (!$request->file('photo')) {
            return null;
        }

        $file = $request->file('photo');
        $filename = time() . '_' . $file->getClientOriginalName();
        $file->move('_uploads', $filename);

        return $filename;
    }

    private function saveOptions($productId, array $names, array $prices): void
    {
        foreach ($names as $index => $name) {
            DB::table('gym_product_options')->insert([
                'gym_product_id' => $productId,
                'name' => $name,
                'price' => $prices[$index] ?? 0,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
