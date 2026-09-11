<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    private const ADMIN_EMAIL = 'admin@gymshop.com';
    private const ADMIN_PASSWORD = 'admin123';

    public function showLogin()
    {
        if (session('admin_logged_in')) {
            return redirect(url('/dashboard'));
        }

        return view('auth.login');
    }

    public function adminLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($request->input('email') !== self::ADMIN_EMAIL || $request->input('password') !== self::ADMIN_PASSWORD) {
            return back()->with('error', 'Invalid admin email or password.')->withInput();
        }

        $request->session()->regenerate();
        session([
            'admin_logged_in' => true,
            'admin_name' => 'Gym Shop Admin',
            'admin_email' => self::ADMIN_EMAIL,
        ]);

        return redirect(url('/dashboard'));
    }

    public function showCustomerRegister()
    {
        return view('auth.customer_register');
    }

    public function customerRegister(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:gym_customers,email',
            'phone' => 'nullable|string|max:50',
            'address' => 'nullable|string',
            'password' => 'required|min:6|confirmed',
        ]);

        DB::table('gym_customers')->insert([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'address' => $request->input('address'),
            'password' => Hash::make($request->input('password')),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect(url('/login'))->with('success', 'Customer registered successfully!');
    }

    public function logout(Request $request)
    {
        $request->session()->flush();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect(url('/login'))->withHeaders([
            'Cache-Control' => 'no-store, no-cache, must-revalidate, max-age=0',
            'Pragma' => 'no-cache',
            'Expires' => 'Sat, 01 Jan 2000 00:00:00 GMT',
        ]);
    }
}
