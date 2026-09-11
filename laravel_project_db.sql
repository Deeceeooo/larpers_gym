-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2026 at 10:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `country_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `country_id`, `stock`, `amount`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Maiores est molestiae laborum voluptatibus.', 'Autem quibusdam asperiores vero facere amet. Commodi quidem molestiae fuga quis nesciunt. Minus molestiae rem et rem. Cumque soluta et consequuntur necessitatibus aspernatur soluta ut.', 37, 947, 8931.12, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(2, 'Labore consequatur necessitatibus quas ullam veritatis ab aut.', 'Commodi veritatis sapiente corporis possimus eum mollitia nisi. Hic deserunt corporis aut officiis animi ullam. Omnis consequatur iure aut et ad. Voluptatem et doloremque hic dolor.', 67, 607, 876.03, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(3, 'Exercitationem non tenetur rerum autem.', 'Recusandae animi est quo vitae quidem facere. Porro molestiae perspiciatis enim. Nam ipsa tenetur sed. Quos eos omnis et veritatis est et quia culpa.', 56, 370, 887.07, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(4, 'Numquam impedit nisi facere neque iure molestias qui.', 'Non pariatur dolores eligendi voluptatibus. Accusantium maiores impedit illum quae. Earum et minima sit distinctio autem.', 95, 507, 5851.94, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(5, 'Recusandae accusantium et dolorem inventore.', 'Eveniet voluptatum in qui. Odio reiciendis doloribus voluptatum doloribus neque possimus repudiandae.', 82, 977, 9843.34, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(6, 'Ea rerum quibusdam aliquid qui.', 'Est fuga qui quam et modi. Nisi quas totam quod in quia. Et dolor illo voluptas.', 12, 379, 5931.44, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(7, 'Eius distinctio perferendis nisi.', 'Reprehenderit enim voluptas et saepe. Hic repellendus quam dolorum sint exercitationem. Illum ut odit officiis sint. Minus incidunt sed hic qui.', 86, 784, 7912.84, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(8, 'Sit repellendus est repellat quis est.', 'Sint odio veritatis debitis fugiat. Libero asperiores et esse ratione culpa. Corrupti consequuntur qui soluta nemo ab. Ipsam sunt earum corporis cupiditate et.', 46, 291, 501.67, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(9, 'Tempora libero beatae libero quae est repellat.', 'Eveniet impedit necessitatibus asperiores cum. Alias architecto eius dignissimos culpa magni. Et labore fugiat animi eveniet omnis consectetur pariatur.', 81, 435, 8553.03, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(10, 'Eligendi in nulla praesentium ut dolores et.', 'Consequuntur veniam iusto ipsum cupiditate rerum ea sed. Consectetur harum culpa natus pariatur sit veritatis. Neque fugiat nulla consequatur voluptatibus debitis mollitia libero.', 71, 16, 2567.73, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(11, 'Laboriosam in voluptatum ut voluptatem.', 'Nemo perspiciatis earum eum at explicabo. Vero qui sunt cumque et earum optio. Iure ipsa neque fugit iure debitis et. Sint omnis sit enim accusamus dolor.', 69, 167, 6003.44, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(12, 'Totam nam eius quaerat voluptate cupiditate.', 'Voluptate labore laborum beatae est nam deserunt. Officiis voluptas deserunt ut rerum rerum. Ut quis consequatur fugiat occaecati et reiciendis in. Minima cupiditate et sed repellendus.', 52, 856, 7490.54, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(13, 'Nemo aliquam qui sint rerum est architecto voluptate.', 'Mollitia nulla aliquid numquam sit aperiam magni enim. Consequatur animi voluptatem nisi perferendis ab eaque. Corporis eius ipsam porro at. Accusamus omnis aut eum et.', 69, 246, 5779.52, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(14, 'Quo optio voluptas aliquid eum.', 'Sapiente repudiandae aut officia autem. Qui similique velit quos. Sit id non voluptatem quod fugit fuga sapiente. Magnam est eos placeat non placeat consectetur laborum.', 67, 615, 8428.57, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(15, 'Nihil adipisci id ea praesentium cum blanditiis rerum.', 'Eveniet rerum et sapiente reprehenderit. Eum aut id ut quia non sapiente. Ipsa sed perspiciatis earum quidem ut. Atque est distinctio eos quis pariatur ut.', 9, 86, 129.90, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(16, 'Tempore labore id omnis beatae.', 'Quo illum sequi odio accusantium et. Neque laborum voluptas dolorem alias. Et ad ipsa placeat iste qui qui aut quis.', 72, 356, 2578.99, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(17, 'Sint inventore pariatur exercitationem sint optio doloribus.', 'Veniam impedit eos ad nemo. Explicabo sunt vero praesentium qui quia. Et facere doloremque qui et id velit dolorem quis. Voluptate voluptatem nihil et quisquam vel quod.', 78, 822, 1066.64, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(18, 'Non ex omnis vel id commodi.', 'Consequatur sed ea labore quaerat. Veritatis temporibus dicta rerum et dignissimos sint dolor. Voluptate quo culpa occaecati ex. Iure ut quia ut veritatis optio laboriosam libero.', 19, 810, 5643.67, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(19, 'Assumenda voluptatem perferendis quo veritatis saepe excepturi.', 'Quia ea cupiditate quisquam perspiciatis. Reiciendis et accusantium quas. Quas facere incidunt pariatur atque qui quibusdam. Laborum et quos eligendi voluptas repellendus temporibus dolorem.', 5, 730, 4191.21, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(20, 'Sit et est cum quod deleniti consequatur laudantium.', 'Perferendis ducimus enim mollitia illum. Aut nihil odit deserunt. Temporibus quidem quaerat veniam culpa quam distinctio consequatur.', 83, 856, 8166.65, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(21, 'Deserunt commodi quo repellat quia consequatur ut expedita.', 'Veritatis iste repellat numquam sed. Voluptas est repellendus voluptate quo enim pariatur debitis. Et sed odit nihil ut earum ipsa voluptatibus. Iste doloribus libero sed nam id.', 49, 256, 2632.41, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(22, 'Non beatae ut eius quas vitae et explicabo.', 'Praesentium repellendus temporibus ducimus commodi. Sed tempora totam porro voluptates. Quia nihil fugit dolor.', 48, 592, 3374.55, 'default.jpg', '2026-08-30 19:53:05', '2026-08-30 19:53:05'),
(23, 'Vitae fuga nostrum qui natus vero.', 'Molestiae excepturi sed aperiam magni tenetur vero repellat ipsa. Dolorum numquam voluptatem rerum dolores sapiente. Sint rem adipisci dicta aliquid iusto aut.', 47, 785, 7791.30, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(24, 'Minus sed ad enim ratione.', 'Aut sunt labore error ullam. Non impedit praesentium rem alias est enim porro est.', 13, 545, 1189.82, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(25, 'Quis cupiditate libero culpa voluptate cupiditate.', 'Ut non autem ab nostrum at porro assumenda. Et cum voluptas et ducimus officiis est. Consectetur quaerat dolorem id. Dolorum dolor in ipsa quibusdam in omnis.', 19, 139, 3705.99, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(26, 'Aliquid in qui et non.', 'Vitae aspernatur non molestias magnam. Neque omnis quibusdam ducimus ea. Tempore nam soluta praesentium magni quisquam. Illo odio ipsam aspernatur a facere.', 56, 93, 8866.47, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(27, 'Modi mollitia nobis iure praesentium non pariatur dignissimos.', 'Et mollitia occaecati voluptatibus eius officia. Sed ut laboriosam similique ullam. Beatae et nulla ipsam maiores consequuntur minima minima. Dignissimos qui veniam unde ducimus eos excepturi est in.', 45, 973, 1942.90, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(28, 'Architecto eum temporibus nisi et et ut.', 'Et ipsum libero rerum est accusamus. Dolores ipsa ullam aut alias. Ipsa aut quam est quisquam consequatur aperiam aliquid possimus.', 39, 141, 6385.67, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(29, 'Mollitia natus hic rerum delectus velit.', 'Iure nam non eius sint dolores veniam eum quia. Incidunt qui dolorem aut quos rerum quia eos dolor. Provident non sed nobis cumque placeat in.', 88, 634, 2318.65, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(30, 'Asperiores ratione qui est nemo eum officiis dolor.', 'Iusto eaque et ut perspiciatis. Dolore est nobis eius labore qui delectus. Ipsa laudantium porro nesciunt.', 67, 545, 2259.25, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(31, 'Sed facilis dolore nemo aliquid.', 'Eos ut soluta laborum tempore. Mollitia voluptatem laudantium aut laboriosam mollitia mollitia. Quis voluptatem voluptas quae sit perferendis et exercitationem nihil.', 16, 669, 3691.46, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(32, 'Laborum repellat nostrum iure mollitia reprehenderit et similique amet.', 'Est aut similique sed nam ratione. Placeat at aut harum aspernatur necessitatibus. Quaerat error quaerat velit dolorem eaque. Facere soluta neque et laborum. Id et a unde id tenetur similique labore.', 68, 331, 9343.99, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(33, 'Accusantium aut non aliquid doloremque velit impedit.', 'Est inventore officiis voluptas beatae voluptas fugiat rerum. Sed corrupti suscipit ut dolores officiis a. Nihil et possimus nobis. Voluptatem et aliquam voluptatibus. Sit ipsum velit quia tempora.', 92, 934, 1443.26, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(34, 'Id soluta architecto hic corrupti ipsa est.', 'Quasi odio nisi ut dicta aperiam. Deserunt ut quis magni qui. Asperiores quasi esse et pariatur beatae voluptas laborum quae.', 2, 585, 2232.54, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(35, 'Sunt harum dolor eos dolores enim ex.', 'Qui sed ea est laboriosam qui hic repudiandae. Commodi totam a ut aut voluptates eaque quae. Est suscipit laborum omnis reprehenderit.', 94, 400, 3046.51, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(36, 'Earum facere enim vel temporibus rerum possimus porro.', 'Quo soluta earum voluptas. Sequi aperiam est accusantium laborum nobis est. Nulla iusto dolore amet error. Quia reiciendis aut qui accusamus eos eius.', 87, 165, 597.82, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(37, 'Cupiditate nulla beatae necessitatibus at omnis.', 'A maiores inventore deserunt aut voluptas similique ipsa. Magni eveniet reiciendis incidunt consequatur eius quod dicta. Earum et ut et. Fugit consequatur recusandae qui vel ratione et dolores fugit.', 81, 825, 1582.30, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(38, 'Et tempore et et accusantium veniam ut.', 'Est dolores commodi quis aperiam excepturi explicabo dignissimos omnis. Corporis ut iste natus nesciunt quia ut. Vero rem doloribus quas consectetur.', 37, 630, 70.35, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(39, 'Reiciendis aut voluptas numquam.', 'Nostrum eligendi cumque eligendi animi sit earum consequatur. Cumque voluptatibus est consequatur impedit. Dolorum esse neque voluptas eius eum sit similique. Et at nam temporibus neque.', 94, 266, 8033.04, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(40, 'Ut odio ullam neque mollitia.', 'Culpa cum nesciunt cum necessitatibus. Qui labore et saepe. Quisquam perspiciatis quis expedita labore et rerum.', 27, 411, 4680.08, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(41, 'Error dolores et aut velit aut voluptatem voluptatem.', 'Iste natus qui dolorem. Animi ex dolores praesentium occaecati. Est vel tempore recusandae qui voluptatem perferendis.', 99, 755, 3772.97, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(42, 'Eaque id iusto accusamus consequatur.', 'Reprehenderit harum ullam laboriosam error. Repellendus impedit sunt accusamus. Non ipsam nemo earum animi vel ducimus labore.', 7, 994, 5461.06, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(43, 'Delectus quas eius consequatur cum alias rerum aut.', 'Vel vel enim dolor ullam fugiat. Asperiores ut minima dolore praesentium nisi cum. Est sed omnis quaerat non. Architecto unde voluptas voluptas rerum eveniet commodi vel.', 42, 123, 7390.10, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(44, 'Ipsa tempora consequuntur ducimus ut sequi sed.', 'Consequatur ex et quo earum eos. Voluptatem et sapiente est qui. Ducimus consectetur iure laudantium voluptas itaque. Cum quia velit facere aut.', 77, 565, 315.60, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(45, 'Et beatae ut quia qui.', 'Est doloremque officiis quia quisquam voluptas modi. Debitis hic cupiditate explicabo laboriosam. Tenetur temporibus optio in nostrum.', 90, 560, 4805.35, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(46, 'Non quia velit qui vel non eligendi et.', 'Ipsum repellendus atque possimus possimus reprehenderit. Ea aut illum aut vel dolor optio.', 71, 173, 7241.63, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(47, 'Et aut cum beatae beatae.', 'In qui cumque eveniet consectetur ex sit. Rerum illum quidem aspernatur eos. Placeat maxime ut quis illo. Accusamus enim nemo aperiam aut.', 1, 23, 2912.30, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(48, 'Dolore reprehenderit consequuntur magnam similique aut perferendis.', 'Odit et consequatur placeat nisi totam ut voluptatem eum. Aliquid fuga voluptatem dolore perspiciatis accusamus. Explicabo quos molestiae deleniti cupiditate et omnis.', 55, 284, 192.41, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(49, 'Aut perspiciatis nesciunt sit et.', 'Libero quae reprehenderit quae consequuntur necessitatibus. Quo voluptatem temporibus facere. Et sequi saepe voluptatibus et.', 74, 343, 1130.69, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(50, 'Est optio consequatur sint consequatur ab et nostrum excepturi.', 'Repellat voluptas sit beatae iure quasi debitis labore. Rerum non culpa autem placeat aut. Non rerum rerum maxime incidunt. Sunt quia enim voluptatem quis enim eum.', 7, 553, 1013.67, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(51, 'Est voluptas ex sit cupiditate aliquid explicabo.', 'Et vel quod corporis sint numquam. Enim facilis odit quas voluptatem omnis et. Dolores odio eius enim officia voluptas id. Quo est beatae recusandae ut eligendi ducimus inventore quo.', 12, 974, 3293.57, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(52, 'Hic accusamus inventore quibusdam numquam.', 'Velit provident distinctio officia deserunt. Velit voluptatem assumenda itaque quaerat exercitationem. Sapiente sapiente earum sed necessitatibus odit necessitatibus.', 4, 174, 4478.94, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(53, 'Accusamus quia deserunt blanditiis et aliquam.', 'Doloribus beatae dolor in et labore. Est dicta maxime est labore ut beatae officiis. Rem quia at maxime consequuntur corporis autem facere. Et nisi nulla repellat veniam eaque quasi velit et.', 56, 554, 4731.76, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(54, 'Rerum ut perferendis pariatur facilis in corporis blanditiis.', 'Dolor animi temporibus et harum laborum porro dolor. Dolore similique voluptas et doloribus ullam similique quidem occaecati. Odit mollitia expedita eligendi et iure excepturi.', 60, 12, 7925.35, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(55, 'Numquam accusantium iusto nulla consequuntur quae.', 'Aut unde omnis quia dolore minima. Laboriosam impedit maiores at repudiandae aut. Asperiores ipsa repudiandae esse. Est cum neque delectus atque.', 3, 141, 6805.15, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(56, 'Qui expedita et perferendis ipsum.', 'Rem sapiente quo eos fuga est. Odio praesentium quis cum ullam deserunt. Possimus dicta mollitia architecto fugiat sequi incidunt. Veritatis culpa modi porro ex nam iste.', 79, 134, 8783.25, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(57, 'Pariatur quia et non exercitationem sed et.', 'Assumenda quis aliquid facere sed fuga et. Et consequuntur aliquid non id placeat quam aut. Non nostrum ipsam voluptatum neque quia quidem quo. At et est illum inventore ab.', 4, 697, 3325.39, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(58, 'Doloremque totam quas quia quia quibusdam quo.', 'Ratione possimus voluptas excepturi laboriosam nobis. Repudiandae sint qui earum rerum soluta. Et culpa sint similique explicabo dolorem voluptatem et.', 96, 282, 810.84, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(59, 'Ratione voluptatibus voluptatem laboriosam quod dolores.', 'Omnis iste cumque voluptatem est. Id inventore nemo reiciendis tempore pariatur quo exercitationem voluptatibus. Consequatur officiis aliquam eum itaque expedita. Harum et laborum possimus.', 5, 845, 7985.96, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(60, 'Eos iusto doloribus voluptatem aliquid aut.', 'Vel eum molestiae enim vel. Delectus eaque sint est sit. Et quis culpa architecto eius itaque.', 52, 275, 401.94, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(61, 'Eos veniam et totam corrupti quisquam dolorem nobis.', 'Laudantium ducimus quo autem voluptatum voluptatem aut. Quam neque qui totam asperiores voluptas et consectetur. Facilis nihil reiciendis minus qui minima laborum.', 7, 896, 8775.97, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(62, 'Qui quo quidem consequatur voluptatibus qui expedita.', 'Ipsum vel rerum reiciendis voluptas. Et et molestiae ut cumque. Occaecati rerum qui quisquam iure aut. Laudantium recusandae aliquam optio autem laboriosam maxime rerum laboriosam.', 3, 896, 5110.03, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(63, 'Vel dolore quam quo facere et consequatur quod beatae.', 'Id voluptatem occaecati magnam veniam aut. Molestiae minima blanditiis placeat saepe sed debitis sunt ex. Non molestiae laudantium nesciunt qui et.', 50, 424, 9572.04, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(64, 'Quo velit tempore consequuntur voluptatem at.', 'Voluptatem rem mollitia qui et assumenda suscipit deleniti. Voluptatum sit voluptatem nam quasi. Voluptate in aut quasi. Non sed pariatur molestiae dolorem quas.', 25, 106, 6577.85, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(65, 'Sunt pariatur hic quo aliquid harum voluptatibus.', 'Aperiam fuga velit quia. Inventore ex nisi praesentium et voluptas dolores. Exercitationem soluta possimus doloremque error saepe animi.', 4, 553, 2763.89, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(66, 'Dolorum sint delectus facere quo sint ut.', 'Mollitia odit excepturi nisi optio molestias ut. Vitae aspernatur cum quo quod in voluptatum. Quis explicabo laborum nemo aperiam omnis. Sint tempore eum harum facilis culpa ad et.', 18, 336, 1797.68, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(67, 'Optio iste mollitia perferendis repellendus sint rerum voluptas eos.', 'Cupiditate eligendi quo voluptas. Consequatur quia consequatur aut. Expedita error eius assumenda minus ea beatae reiciendis. Est laborum omnis quis repellendus. Ex alias eligendi voluptatem.', 8, 495, 9652.48, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(68, 'Laboriosam voluptatibus adipisci occaecati corrupti veniam.', 'Occaecati voluptatem cumque dignissimos aliquid qui quia. Omnis laudantium quisquam ut atque doloribus voluptatem aut. Quos accusamus totam aliquam repellat.', 80, 128, 4166.39, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(69, 'Est dolorem provident impedit dicta.', 'Tempora aut architecto placeat quod necessitatibus. Aperiam veniam odio consequatur nulla.', 52, 585, 3463.49, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(70, 'Quod exercitationem vel corporis doloremque cupiditate ipsum.', 'Possimus fuga qui cupiditate accusantium qui commodi accusamus animi. Laboriosam corporis voluptates ipsam veritatis cupiditate qui voluptatem. Inventore aut est expedita harum tempore voluptas vel.', 98, 848, 196.12, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(71, 'Inventore odio quam iure sapiente sapiente sequi.', 'Voluptas culpa doloremque qui. Saepe quam error aliquid vitae nisi. Consequatur dolorum possimus dignissimos placeat. Eligendi mollitia eligendi alias eum numquam dolor.', 77, 368, 8321.00, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(72, 'Ullam sint delectus non unde labore.', 'Ratione minus animi dolor minima debitis. Maiores delectus atque est qui omnis. Tempora tenetur consequatur dolorem maiores quaerat doloremque similique.', 96, 862, 1478.09, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(73, 'Est illo consequuntur ad quo voluptas aliquid.', 'Reiciendis dolores qui minus facilis possimus fugit. Qui quidem porro necessitatibus nesciunt amet. Non quam et officia aut.', 82, 117, 2975.34, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(74, 'Earum nihil autem amet eum debitis quia reprehenderit.', 'Molestias maiores repellendus nam praesentium ut voluptatum. Voluptatem nisi sit illo repudiandae magni iusto. Repellat earum consequatur cumque eveniet animi aut qui.', 49, 160, 4779.42, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(75, 'Eveniet et deleniti et in.', 'Enim fuga atque autem quia et. Et nihil et nulla a molestias repellat. Vel provident ad fuga voluptas dicta perferendis eius. Quo in sunt veniam sed.', 81, 253, 7263.33, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(76, 'Porro dolor voluptatem tempora labore nihil ullam.', 'Molestias labore temporibus et perspiciatis dolores sed magni. Eum voluptatem at eligendi et.', 19, 810, 7424.76, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(77, 'Quaerat beatae non non recusandae aspernatur voluptas voluptatem.', 'Dolore sequi fuga assumenda sint quia. Cumque ullam mollitia quia non vero facilis sunt fugit. Nemo qui et et quos veniam corporis velit.', 73, 458, 7805.44, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(78, 'Quia provident dignissimos voluptas quae et.', 'Repellendus harum sequi eligendi rerum natus non. Dolores perspiciatis aspernatur corporis fuga et architecto.', 7, 364, 4415.49, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(79, 'Velit atque ad vel aut.', 'Qui laborum qui pariatur aut eius. Ad et quas dolores tempora. Totam magni quibusdam vel impedit. Illo voluptas quos sit quos.', 76, 397, 868.81, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(80, 'Numquam quia dolorem voluptatem architecto ut magnam.', 'Facere consequatur qui excepturi aut magni voluptas consequatur tempora. Rerum est veniam nesciunt occaecati dolores quam voluptatibus harum. Soluta sed recusandae qui labore quo nesciunt dolor.', 2, 214, 73.87, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(81, 'Qui sit at qui et sed at praesentium.', 'Voluptas sapiente aperiam culpa nulla repudiandae qui. Repudiandae consectetur vel molestias iste. Itaque non expedita quisquam ea modi aperiam. Nostrum magnam dolorem odit dolores iure.', 72, 421, 1477.57, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(82, 'Rerum reprehenderit ab quod nulla et ut.', 'Praesentium placeat qui ducimus magnam. Sunt nisi delectus fuga dolor eos sequi repellendus accusantium. Eos neque provident quia voluptas consequuntur. Eveniet ab est et et quod dolores.', 14, 556, 3907.66, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(83, 'Consequatur animi odio quia.', 'Exercitationem velit rem soluta ut. Voluptas eius doloribus omnis odit enim. Expedita distinctio nemo ea nostrum cupiditate deleniti nisi. In eos iste corrupti architecto nesciunt nostrum qui.', 45, 189, 8459.77, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(84, 'Dolorem dolorem voluptatem facere ut est deleniti.', 'Maiores eos voluptate molestias totam hic accusantium quisquam. Voluptas omnis aut et. Rerum perspiciatis ea aspernatur quia. Commodi temporibus et necessitatibus qui.', 40, 308, 5277.96, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(85, 'Vero molestiae expedita rerum amet in facilis.', 'Est et doloremque voluptas sed. Voluptatibus voluptatibus deserunt voluptates nulla iure ut. Ut in possimus distinctio veritatis facilis distinctio. Eveniet eos doloremque nihil totam ducimus.', 86, 890, 9197.49, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(86, 'Sed id ut pariatur et aut nulla.', 'Sequi atque fugit nemo qui doloribus et. Eum rerum repudiandae aliquid. Quo ducimus est corrupti ea minima sunt occaecati. Velit culpa quis ea. Doloribus ex non facere exercitationem hic et.', 47, 366, 1838.37, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(87, 'Consectetur necessitatibus natus quia nostrum unde officia.', 'Aut qui qui nostrum ipsum ut atque. Est voluptas in cum. Et et sit aut quia. Ratione sapiente et sit labore ut.', 49, 579, 62.35, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(88, 'Omnis consequatur et magni qui.', 'Eaque reprehenderit eum consequatur et assumenda ea praesentium. Placeat aut quod cum sint. Ut repudiandae repudiandae non nobis. Esse maiores nostrum consequatur quaerat.', 17, 691, 860.27, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(89, 'Inventore labore repudiandae aspernatur facilis.', 'Commodi ab officiis dolor saepe. Minima quia voluptate enim aut sequi et. Est nihil vitae sit possimus non blanditiis. Quia quasi illum voluptas enim et sed.', 37, 257, 5916.99, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(90, 'Quidem enim enim quia voluptatum eaque a quia.', 'Est praesentium ea qui assumenda ad. Repellendus error voluptas in nulla rerum vel. Placeat consequuntur autem sint laborum eius aliquid iste. Est rem deleniti deserunt est deleniti dignissimos.', 5, 371, 6670.61, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(91, 'Nobis eligendi ratione consequuntur.', 'Occaecati est et voluptatem vel sit. Et provident ut beatae quo ex dolorem nihil. Quia alias omnis eligendi aut amet tenetur.', 35, 694, 6763.21, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(92, 'Non delectus voluptas consequatur et.', 'Molestiae ratione sint dolorum ea vero. Qui natus qui illum aut. Dolore ipsum qui delectus est similique quia qui.', 1, 58, 8120.41, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(93, 'Eum dolores culpa voluptatem quas harum.', 'Voluptas impedit ut ut et saepe libero. Qui cum est omnis iusto voluptate qui. Aut quia maiores autem nam. Consequatur ut et qui explicabo.', 79, 809, 4739.49, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(94, 'Autem excepturi nemo autem sequi qui quae.', 'Reprehenderit qui perferendis optio non nisi aut voluptas. Ipsam sed rerum quidem voluptas in eum quibusdam voluptates. Earum quisquam et adipisci. Quae perferendis corrupti voluptas consequatur.', 2, 155, 3129.96, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(95, 'Debitis harum accusantium mollitia molestiae placeat quia minima.', 'Nihil qui amet voluptates molestiae fuga est. Beatae hic animi dicta iure eum. Eveniet rerum quasi nihil ut veniam.', 34, 504, 1391.56, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(96, 'Quia qui illum sit.', 'Tempore at voluptates aliquam reiciendis deleniti accusantium vitae. Amet at illo adipisci architecto possimus qui itaque. Praesentium enim provident totam et quae laborum fugit. Ut id ut quam.', 29, 554, 721.51, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(97, 'Eum voluptatem sequi voluptatem sit laborum et quo.', 'Alias sit quae error. Natus ut voluptas laborum ullam repellendus. Officia et placeat voluptates eum et voluptatibus. Ad qui et vel aut delectus rerum.', 14, 68, 2672.31, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(98, 'Laboriosam vel nihil quia consectetur officia reprehenderit.', 'Voluptatem natus aut qui voluptas eos non. Nisi fugiat omnis voluptas. Voluptatem vel provident ea beatae velit. Consequatur fugit asperiores odio qui assumenda.', 10, 842, 4379.74, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(99, 'Molestiae explicabo sed illum delectus.', 'Consequatur ut corrupti qui non. Natus officia aspernatur ipsam eum consequuntur non.', 83, 632, 8244.84, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(100, 'Ut magni corporis delectus exercitationem.', 'Rerum et libero voluptates et et quia voluptatem. Fugiat in qui repellat necessitatibus cupiditate. Itaque sunt quos velit odio quo esse.', 61, 810, 4715.30, 'default.jpg', '2026-08-30 19:53:06', '2026-08-30 19:53:06'),
(103, 'The history of the philippines', 'the history of the philippines', 13, 89, 1000.00, 'Screenshot 2026-09-02 131819.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_customers`
--

CREATE TABLE `gym_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gym_customers`
--

INSERT INTO `gym_customers` (`id`, `name`, `email`, `phone`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Harold Smitham', 'opfeffer@example.net', '1-864-716-7790', '213 Rowland Lane Suite 803\r\nNorth Albinamouth, NV 38978', NULL, '2026-09-04 21:34:39', '2026-09-10 17:28:14'),
(2, 'Jaeden Zboncak', 'gilbert32@example.com', '(573) 503-1292', '782 Vernon Village\nHoldenton, RI 93641-7695', NULL, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(3, 'Asa Nikolaus', 'bvonrueden@example.org', '(239) 681-2809', '339 Schiller Way\nEast Romaineton, WI 58080', NULL, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(4, 'Osbaldo Greenfelder', 'parker86@example.org', '(937) 263-6172', '405 Hane Mountain\nDooleymouth, NC 33794', NULL, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(5, 'German Abernathy', 'lind.alison@example.com', '+16302911399', '933 Lakin Loop\nWest Carlieshire, IA 99016', NULL, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(6, 'Kelly Terry', 'pascale.swaniawski@example.com', '1-303-363-4030', '49710 Bernard Stream\nChelseaport, NM 81076-3244', NULL, '2026-09-04 21:34:39', '2026-09-04 21:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `gym_orders`
--

CREATE TABLE `gym_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gym_customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `status` enum('pending','processing','completed','cancelled') NOT NULL DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gym_orders`
--

INSERT INTO `gym_orders` (`id`, `gym_customer_id`, `order_number`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'GYM-20260905053439-1-1', 'processing', 12700.00, '2026-08-28 21:34:39', '2026-09-04 21:34:39'),
(2, 1, 'GYM-20260905053439-1-2', 'completed', 6750.00, '2026-09-03 21:34:39', '2026-09-04 21:34:39'),
(3, 2, 'GYM-20260905053439-2-1', 'processing', 1800.00, '2026-08-21 21:34:39', '2026-09-04 21:34:39'),
(4, 2, 'GYM-20260905053439-2-2', 'pending', 900.00, '2026-08-21 21:34:39', '2026-09-04 21:34:39'),
(5, 2, 'GYM-20260905053439-2-3', 'pending', 7800.00, '2026-08-19 21:34:39', '2026-09-04 21:34:39'),
(6, 3, 'GYM-20260905053439-3-1', 'pending', 8350.00, '2026-08-25 21:34:39', '2026-09-04 21:34:39'),
(7, 3, 'GYM-20260905053439-3-2', 'pending', 7050.00, '2026-08-27 21:34:39', '2026-09-04 21:34:39'),
(8, 4, 'GYM-20260905053439-4-1', 'processing', 13000.00, '2026-08-17 21:34:39', '2026-09-04 21:34:39'),
(9, 4, 'GYM-20260905053439-4-2', 'processing', 9300.00, '2026-08-17 21:34:39', '2026-09-04 21:34:39'),
(10, 4, 'GYM-20260905053439-4-3', 'processing', 8700.00, '2026-09-02 21:34:39', '2026-09-04 21:34:39'),
(11, 5, 'GYM-20260905053439-5-1', 'processing', 14000.00, '2026-09-03 21:34:39', '2026-09-04 21:34:39'),
(12, 5, 'GYM-20260905053439-5-2', 'completed', 6900.00, '2026-08-20 21:34:39', '2026-09-04 21:34:39'),
(13, 6, 'GYM-20260905053439-6-1', 'completed', 5600.00, '2026-08-22 21:34:39', '2026-09-04 21:34:39'),
(14, 6, 'GYM-20260905053439-6-2', 'processing', 2700.00, '2026-08-26 21:34:39', '2026-09-04 21:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `gym_order_items`
--

CREATE TABLE `gym_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gym_order_id` bigint(20) UNSIGNED NOT NULL,
  `gym_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gym_product_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gym_order_items`
--

INSERT INTO `gym_order_items` (`id`, `gym_order_id`, `gym_product_id`, `gym_product_option_id`, `product_name`, `option_name`, `unit_price`, `quantity`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Adjustable Dumbbell', '30kg', 3200.00, 3, 9600.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(2, 1, 3, NULL, 'Whey Protein', 'Cookies 5lb', 3100.00, 1, 3100.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(3, 2, 2, NULL, 'Resistance Band Set', 'Medium', 450.00, 1, 450.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(4, 2, 1, NULL, 'Adjustable Dumbbell', '30kg', 3200.00, 1, 3200.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(5, 2, 3, NULL, 'Whey Protein', 'Cookies 5lb', 3100.00, 1, 3100.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(6, 3, 4, NULL, 'Creatine Monohydrate', 'Lemon 300g', 900.00, 2, 1800.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(7, 4, 4, NULL, 'Creatine Monohydrate', 'Lemon 300g', 900.00, 1, 900.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(8, 5, 1, NULL, 'Adjustable Dumbbell', '10kg', 1200.00, 1, 1200.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(9, 5, 1, NULL, 'Adjustable Dumbbell', '20kg', 2200.00, 3, 6600.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(10, 6, 3, NULL, 'Whey Protein', 'Vanilla 2lb', 1450.00, 3, 4350.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(11, 6, 3, NULL, 'Whey Protein', 'Chocolate 2lb', 1450.00, 2, 2900.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(12, 6, 2, NULL, 'Resistance Band Set', 'Heavy', 550.00, 2, 1100.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(13, 7, 3, NULL, 'Whey Protein', 'Chocolate 2lb', 1450.00, 3, 4350.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(14, 7, 4, NULL, 'Creatine Monohydrate', 'Lemon 300g', 900.00, 3, 2700.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(15, 8, 1, NULL, 'Adjustable Dumbbell', '20kg', 2200.00, 3, 6600.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(16, 8, 1, NULL, 'Adjustable Dumbbell', '30kg', 3200.00, 2, 6400.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(17, 9, 3, NULL, 'Whey Protein', 'Cookies 5lb', 3100.00, 3, 9300.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(18, 10, 1, NULL, 'Adjustable Dumbbell', '10kg', 1200.00, 3, 3600.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(19, 10, 3, NULL, 'Whey Protein', 'Vanilla 2lb', 1450.00, 2, 2900.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(20, 10, 1, NULL, 'Adjustable Dumbbell', '20kg', 2200.00, 1, 2200.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(21, 11, 1, NULL, 'Adjustable Dumbbell', '20kg', 2200.00, 2, 4400.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(22, 11, 1, NULL, 'Adjustable Dumbbell', '30kg', 3200.00, 3, 9600.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(23, 12, 4, NULL, 'Creatine Monohydrate', 'Unflavored 300g', 850.00, 3, 2550.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(24, 12, 3, NULL, 'Whey Protein', 'Chocolate 2lb', 1450.00, 3, 4350.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(25, 13, 1, NULL, 'Adjustable Dumbbell', '30kg', 3200.00, 1, 3200.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(26, 13, 1, NULL, 'Adjustable Dumbbell', '10kg', 1200.00, 2, 2400.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39'),
(27, 14, 4, NULL, 'Creatine Monohydrate', 'Lemon 300g', 900.00, 3, 2700.00, '2026-09-04 21:34:39', '2026-09-04 21:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `gym_products`
--

CREATE TABLE `gym_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `category` enum('equipment','supplement') NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gym_products`
--

INSERT INTO `gym_products` (`id`, `name`, `description`, `category`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Dumbbells', 'Compact dumbbell for home strength training.', 'equipment', '1788878916_dumbbells.png', '2026-09-04 21:34:38', '2026-09-08 06:55:40'),
(2, 'Smith Machine', 'Bands for mobility, warmups, and full-body workouts.', 'equipment', '1788943411_smith_machine.png', '2026-09-04 21:34:38', '2026-09-10 23:54:43'),
(3, 'Whey Protein', 'Protein powder for post-workout recovery.', 'supplement', '1788943439_whey_protein.png', '2026-09-04 21:34:38', '2026-09-10 14:12:47'),
(4, 'Creatine Monohydrate', 'Daily creatine supplement for strength performance.', 'supplement', '1788943472_creatine.png', '2026-09-04 21:34:38', '2026-09-10 14:13:57'),
(5, 'Pecdeck Machine', 'Machine designed to target the chest muscles through controlled fly exercises. Designed for Commercial-grade chest fly machine for gyms and fitness centers.', 'equipment', '1788943554_pecdeck_machine.png', '2026-09-09 00:45:54', '2026-09-10 17:26:18'),
(6, 'Lat Pull Down Machine', 'Cable machine designed for back, shoulder, and arm exercises. Also designed for Heavy-duty commercial machine for gyms and frequent use.', 'equipment', '1788944403_latpulldown_machine.jpg', '2026-09-09 01:00:03', '2026-09-10 17:20:05'),
(7, 'Weight Plates', 'Rubber-coated weight plate designed for strength training and general gym use.', 'equipment', '1788944526_weight_plates.jpg', '2026-09-09 01:02:06', '2026-09-10 17:15:33'),
(8, 'Electrolytes', 'Electrolyte powder designed to help replenish fluids and electrolytes during exercise.', 'supplement', '1788944566_electrolytes.png', '2026-09-09 01:02:46', '2026-09-10 14:11:04'),
(9, 'MultiVitamins For Women', 'Multivitamin formulated for women\'s daily nutritional needs.', 'supplement', '1788944605_multivitamins_forwomen.png', '2026-09-09 01:03:25', '2026-09-10 14:10:32'),
(10, 'MultiVitamins for Men', 'Multivitamin formulated for men\'s daily nutritional needs.', 'supplement', '1788944651_multivitamins_formen.png', '2026-09-09 01:04:11', '2026-09-10 14:08:01'),
(11, 'Olympic Bar', 'Heavy-duty barbell designed for Olympic-style weightlifting and strength training.', 'equipment', '1788944758_olympic_bar.jpg', '2026-09-09 01:05:58', '2026-09-10 17:13:25'),
(12, 'Pre-Workout', 'Powdered pre-workout supplement designed to support energy and focus during workouts.', 'supplement', '1788944809_pre-workout.png', '2026-09-09 01:06:49', '2026-09-10 17:09:55'),
(13, 'Fish Oil', 'Fish oil capsules containing omega-3 fatty acids for daily nutritional support.', 'supplement', '1788945167_fish_oil.png', '2026-09-09 01:12:47', '2026-09-10 14:02:09'),
(14, 'Krea', 'Wheyl Nutrition Creatine', 'supplement', '1789097145_creatine.png', '2026-09-10 19:25:45', '2026-09-10 19:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `gym_product_options`
--

CREATE TABLE `gym_product_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gym_product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gym_product_options`
--

INSERT INTO `gym_product_options` (`id`, `gym_product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(22, 1, '10kg', 1200.00, '2026-09-08 06:55:40', '2026-09-08 06:55:40'),
(23, 1, '20kg', 2200.00, '2026-09-08 06:55:40', '2026-09-08 06:55:40'),
(24, 1, '30kg', 3200.00, '2026-09-08 06:55:40', '2026-09-08 06:55:40'),
(25, 1, '40kg', 4200.00, '2026-09-08 06:55:40', '2026-09-08 06:55:40'),
(26, 1, '50kg', 5200.00, '2026-09-08 06:55:40', '2026-09-08 06:55:40'),
(46, 13, '1200mg - 100softgels', 520.00, '2026-09-10 14:02:09', '2026-09-10 14:02:09'),
(47, 13, '1000mg - 100softgels', 450.00, '2026-09-10 14:02:09', '2026-09-10 14:02:09'),
(48, 13, 'Lemon - 120softgels', 650.00, '2026-09-10 14:02:09', '2026-09-10 14:02:09'),
(51, 10, '60 Tablets', 550.00, '2026-09-10 14:08:01', '2026-09-10 14:08:01'),
(52, 10, '90 Tablets', 720.00, '2026-09-10 14:08:01', '2026-09-10 14:08:01'),
(53, 10, '120 Tablets', 850.00, '2026-09-10 14:08:01', '2026-09-10 14:08:01'),
(60, 9, '60 Tablets', 550.00, '2026-09-10 14:10:32', '2026-09-10 14:10:32'),
(61, 9, '90 Tablets', 720.00, '2026-09-10 14:10:32', '2026-09-10 14:10:32'),
(62, 9, '120 Tablets', 850.00, '2026-09-10 14:10:32', '2026-09-10 14:10:32'),
(63, 8, 'Lemon - 200g', 480.00, '2026-09-10 14:11:04', '2026-09-10 14:11:04'),
(64, 8, 'Orange - 200g', 480.00, '2026-09-10 14:11:04', '2026-09-10 14:11:04'),
(65, 8, 'Berry - 300g', 650.00, '2026-09-10 14:11:04', '2026-09-10 14:11:04'),
(66, 3, 'Chocolate - 1kg', 1850.00, '2026-09-10 14:12:47', '2026-09-10 14:12:47'),
(67, 3, 'Vanilla - 1kg', 1850.00, '2026-09-10 14:12:47', '2026-09-10 14:12:47'),
(68, 3, 'Strawberry - 1kg', 1900.00, '2026-09-10 14:12:47', '2026-09-10 14:12:47'),
(69, 3, 'Chocolate - 2kg', 3400.00, '2026-09-10 14:12:47', '2026-09-10 14:12:47'),
(70, 3, 'Vanilla - 2kg', 3400.00, '2026-09-10 14:12:47', '2026-09-10 14:12:47'),
(71, 4, 'Monohydrate - 300g', 950.00, '2026-09-10 14:13:57', '2026-09-10 14:13:57'),
(72, 4, 'Monohydrate - 500g', 1450.00, '2026-09-10 14:13:57', '2026-09-10 14:13:57'),
(73, 4, 'Fruit Punch - 300g', 1050.00, '2026-09-10 14:13:57', '2026-09-10 14:13:57'),
(74, 12, 'Fruit Punch - 300g', 850.00, '2026-09-10 17:09:55', '2026-09-10 17:09:55'),
(75, 12, 'Blue Raspberry - 300g', 880.00, '2026-09-10 17:09:55', '2026-09-10 17:09:55'),
(76, 11, 'Standard - 7ft -  20kg', 5500.00, '2026-09-10 17:13:25', '2026-09-10 17:13:25'),
(77, 11, 'Women - 6.6ft - 15kg', 4800.00, '2026-09-10 17:13:25', '2026-09-10 17:13:25'),
(78, 11, 'Training - 7ft - 15kg', 4200.00, '2026-09-10 17:13:25', '2026-09-10 17:13:25'),
(79, 7, '5kg', 650.00, '2026-09-10 17:15:33', '2026-09-10 17:15:33'),
(80, 7, '10kg', 1200.00, '2026-09-10 17:15:33', '2026-09-10 17:15:33'),
(81, 7, '20kg', 2300.00, '2026-09-10 17:15:33', '2026-09-10 17:15:33'),
(82, 7, '25kg', 2800.00, '2026-09-10 17:15:33', '2026-09-10 17:15:33'),
(83, 6, '100kg', 45000.00, '2026-09-10 17:20:05', '2026-09-10 17:20:05'),
(84, 6, '120kg', 65000.00, '2026-09-10 17:20:05', '2026-09-10 17:20:05'),
(85, 5, '80 kg', 42000.00, '2026-09-10 17:26:18', '2026-09-10 17:26:18'),
(86, 5, '100kg', 58000.00, '2026-09-10 17:26:18', '2026-09-10 17:26:18'),
(87, 14, 'Orenji', 700.00, '2026-09-10 19:25:45', '2026-09-10 19:25:45'),
(88, 2, '200kg capacity', 75000.00, '2026-09-10 23:54:43', '2026-09-10 23:54:43'),
(89, 2, '300kg capacity', 110000.00, '2026-09-10 23:54:43', '2026-09-10 23:54:43'),
(90, 2, '400kg capacity', 135000.00, '2026-09-10 23:54:43', '2026-09-10 23:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_08_31_015110_create_books_table', 1),
(5, '2026_09_05_000001_create_gym_products_table', 2),
(6, '2026_09_05_000002_create_gym_product_options_table', 2),
(7, '2026_09_05_000003_create_gym_customers_table', 3),
(8, '2026_09_05_000004_create_gym_orders_table', 3),
(9, '2026_09_05_000005_create_gym_order_items_table', 3),
(10, '2026_09_05_000006_remove_status_from_gym_customers_table', 4),
(11, '2026_09_06_000001_add_password_to_gym_customers_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8qLf77PtkSDzjUH9afJDpLZdCOQ8GR4HMtmeURGd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0xlbm4zNFdUMmtwYmttOXVFZ0l6MmdqS2dFQXlwQWRCWWM4RUVUdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789112996),
('Bq1YUBuBKsyrABW4Nc1dOhyOUlpbF3dDdYQnsRo3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.137.0 Chrome/148.0.7778.280 Electron/42.10.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG9pUGNLTGQ4RndLeHdnVjkyblBISVo5bDhNbTlVMDAxcVkyTDZxeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789104548),
('CdeSs5krqepCPxnCL4eOVaueeLpQoLMFy6az6eBB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiek1XUDlYNzdJRml1U2o2SDRDMWxVbkIxWWxyZjRXNUF5S1lIb3R6dSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9neW0tcHJvZHVjdC1mb3JtIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJhZG1pbl9sb2dnZWRfaW4iO2I6MTtzOjEwOiJhZG1pbl9uYW1lIjtzOjE0OiJHeW0gU2hvcCBBZG1pbiI7czoxMToiYWRtaW5fZW1haWwiO3M6MTc6ImFkbWluQGd5bXNob3AuY29tIjt9', 1789113363),
('IPWBM1QDKWzox66A1drgEJRPR3c9wLWS5kINlHPz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1hpMUxUaVgxckdDWkZnWDdZdnlKTlZwbHVRRk9LbVZnbkNHbEw1cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1789104949),
('r3VkYIvTs39cJHKvCmalvylf6aRejcP6hDe8Xzrf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidkhzbFJNejVhWVlINnpPOVBOYXBlZFFTOUVVV0RVNXI3UFhYMlhRQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9neW0tY3VzdG9tZXJzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJhZG1pbl9sb2dnZWRfaW4iO2I6MTtzOjEwOiJhZG1pbl9uYW1lIjtzOjE0OiJHeW0gU2hvcCBBZG1pbiI7czoxMToiYWRtaW5fZW1haWwiO3M6MTc6ImFkbWluQGd5bXNob3AuY29tIjt9', 1789105041),
('sY2rqBjvqW756pZ9QqZcNrKdVcp6LrFSQuBJ1Nga', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.137.0 Chrome/148.0.7778.280 Electron/42.10.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRzh2RW9GUUt6UEViY296eE5IQU1YMFFkRlRnR3pxRDdjR1BWZ09PQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9neW0tZGFzaGJvYXJkIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJhZG1pbl9sb2dnZWRfaW4iO2I6MTtzOjEwOiJhZG1pbl9uYW1lIjtzOjE0OiJHeW0gU2hvcCBBZG1pbiI7czoxMToiYWRtaW5fZW1haWwiO3M6MTc6ImFkbWluQGd5bXNob3AuY29tIjt9', 1789104930);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2026-08-30 19:53:05', '$2y$12$QV/TMvW2jHwTrZrnRHQKz.Qt2o8g04VUO9GxuV1JiV8kjZRVZ.St.', 'td6YYouOw4', '2026-08-30 19:53:05', '2026-08-30 19:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gym_customers`
--
ALTER TABLE `gym_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gym_customers_email_unique` (`email`);

--
-- Indexes for table `gym_orders`
--
ALTER TABLE `gym_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gym_orders_order_number_unique` (`order_number`),
  ADD KEY `gym_orders_gym_customer_id_foreign` (`gym_customer_id`);

--
-- Indexes for table `gym_order_items`
--
ALTER TABLE `gym_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_order_items_gym_order_id_foreign` (`gym_order_id`),
  ADD KEY `gym_order_items_gym_product_id_foreign` (`gym_product_id`),
  ADD KEY `gym_order_items_gym_product_option_id_foreign` (`gym_product_option_id`);

--
-- Indexes for table `gym_products`
--
ALTER TABLE `gym_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_product_options`
--
ALTER TABLE `gym_product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gym_product_options_gym_product_id_foreign` (`gym_product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_customers`
--
ALTER TABLE `gym_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gym_orders`
--
ALTER TABLE `gym_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gym_order_items`
--
ALTER TABLE `gym_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gym_products`
--
ALTER TABLE `gym_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gym_product_options`
--
ALTER TABLE `gym_product_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gym_orders`
--
ALTER TABLE `gym_orders`
  ADD CONSTRAINT `gym_orders_gym_customer_id_foreign` FOREIGN KEY (`gym_customer_id`) REFERENCES `gym_customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gym_order_items`
--
ALTER TABLE `gym_order_items`
  ADD CONSTRAINT `gym_order_items_gym_order_id_foreign` FOREIGN KEY (`gym_order_id`) REFERENCES `gym_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gym_order_items_gym_product_id_foreign` FOREIGN KEY (`gym_product_id`) REFERENCES `gym_products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `gym_order_items_gym_product_option_id_foreign` FOREIGN KEY (`gym_product_option_id`) REFERENCES `gym_product_options` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gym_product_options`
--
ALTER TABLE `gym_product_options`
  ADD CONSTRAINT `gym_product_options_gym_product_id_foreign` FOREIGN KEY (`gym_product_id`) REFERENCES `gym_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
