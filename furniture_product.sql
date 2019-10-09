-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 05:19 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `urlgambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `harga`, `deskripsi`, `urlgambar`) VALUES
(38, 'Gracie TV Credenza', 'Rp 1.499.000', 'Aksen Sederhana Namun Tetap Elegan Pada Credenza Buat suasana ruang keluarga semakin semarak dengan Gracie TV Credenza. Meja panjang yang bisa Anda gunakan sebagai meja TV ini memiliki desain sederhana dan tradisional dengan warna khas kayu yang hangat. Ulir kayunya yang nampak jelas justru menciptakan aksen tersendiri pada Gracie TV Credenza. Bermaterial kayu walnut, Meja TV Gracie merupakan meja tv kayu yang awet, tahan lama, dan mudah dibersihkan. Dengan dimensi 117cm x 35cm x 43,6cm, Meja TV Gracie sangat pas ditempatkan di ruang keluarga.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/g/r/gracie_tv_credenza_context1.jpg'),
(39, 'Kursi Mondy', 'Rp 899.000', 'Semangat Untuk Pemilik Jiwa Muda\nSebagai seorang jiwa muda yang memiliki segudang aktivitas setiap harinya, Anda membutuhkan perabot yang tak kalah fungsional untuk menemani setiap kegiatan, seperti Mondy Chair!\nDibalut dengan warna yang cerah, meletakan kursi ini di sudut ruangan mampu membawa nuansa ceria dan semangat dalam hari dan hunianmu! Busa empuk kursi yang disokong kayu Mindi Solid yang kokoh memberikan kenyamanan dan estetika timeless. Adakah kursi lain yang lebih cocok untuk Anda?', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/m/o/Mondy_Chair_0.jpg'),
(40, 'Lampu Meja Cheyenne', 'Rp 599.000', 'Cheyenne Table Lamp.\n220V-240V', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/t/d/td-0515-yellow-01.jpg'),
(41, 'Kennedy Teepee Tent', 'Rp 1.125.000', '\nBlack polkadots & Red Stars', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/t/p/tpt-019-teepee_kennedy-01_3.jpg'),
(42, 'Kasur Pocket Spring Fabelio Hybrid - King', 'Rp 3.999.000', 'Fabelio Hybrid Mattress\nMemperkenalkan matras dengan desain terbaru, Fabelio Hybrid Mattress. Matras hybrid yang mengkombinasikan material pegas besi berulir anti korosif dengan material PU Foam berkualitas premium. Dilapisi dengan Super Soft Foam dan Plain Knitted Fabric, Fabelio Hybrid Mattress dapat menjadikan waktu tidurmu lebih berkualitas dan nyenyak. \n<img style=\"font-size: 12px; caret-color: #000000; color: #000000; font-family: -webkit-standard;\" src=\"https://fabelio.com/media/wysiwyg/Fabelio_Hybrid_Latex_Mattress/Hybrid-1.jpg\" alt=\"\" />\nMengapa Harus Fabelio Hybrid Mattress?<img src=\"https://fabelio.com/media/wysiwyg/Fabelio_Hybrid_Latex_Mattress/hybrid-mattras-benefit_1.jpg\" alt=\"\" />\nTidak Terganggu Oleh Berbagai Gerakan Lapisan saku pegas dapat membantu menghilangkan gangguan yang berasal dari gerakan Anda atau pasangan. Memiliki 3 Zona Pendukung3 zona inti dengan fungsi yang berbeda dapat memastikan tingkat kenyamanan dan memberikan dukungan optimal untuk setiap bagian tubuh Anda.Dukungan Memadai Untuk PunggungLapisan saku pegas memberikan dukungan yang memadai pada punggung dan meningkatkan pantulan, sehingga Anda dapat bangun dari tidur malam yang menyegarkan.Cocok Untuk Berbagai Posisi TidurKasur ini sangat cocok untuk mengakomodir berbagai posisi tidur. Mulai dari posisi terlentang, miring, ataupun telungkup, akan tetap terasa nyaman.\nNB: Untuk produk yang memerlukan perakitan, akan dilakukan beberapa hari setelah produk dikirim. Apabila telah melebih dari 7 (tujuh) hari setelah produk dikirim belum ada tim kami yang menghubungi jadwal perakitan, Mohon segera hubungi tim Customer Service kami.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/h/y/hybrid_mattress_01_1_1_4.jpg'),
(43, 'Set Ruang Kerja Serreson Simo', 'Rp 3.698.000', 'Terdiri dari:\n\nSerreson Working Table https://fabelio.com/ip/serreson-working-desk.html\nSimo Dining Chair https://fabelio.com/ip/simo-dining-chair.html\n', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/s/e/Serreson_Simo_Working_Set_1.jpg'),
(44, 'Nobi Trash Bin Type C', 'Rp 790.000', '', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/y/h/yh17001bl.jpg'),
(45, 'Lampu Lantai Olympia', 'Rp 1.299.000', 'Lampu Unik dan Edge khas Olympia \n\nHalo, kenalan yuk! Namaku Olympia, aku si Lampu lantai berwarna hitam yang dapat memberikan ruanganmu bernuansa edge. Bentukku unik dari lainnya. Aku cocok diaplikasikan bagi kamu yang menyukai sesuatu yang berbeda. Untuk perawatanku juga tidak sulit kok! Materialku telah didesain untuk mudah dibersihkan, hanya dengan menggunakan lap kering yang halus yang diaplikasikan ke seluruh permukaanku. Dengan itu, aku akan terlihat seperti baru lagi dan siap menghiasi ruanganmu!', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/l/d/ld-0111-black-01_1.jpg'),
(57, 'Set Sendok Garpu Axel dengan Sumpit', 'Rp 70.000', 'Momen Makan Makin Lengkap!\nHai, perkenalkan, aku set alat makan Axel. Aku selalu hidup berpasangan, sendok, garpu dan sumpit. Aku terbuat dari stainless steel berkualitas. Aku memiliki rupa yang menawan dengan desain klasik yang elegan. Warnaku juga cantik, mengkilat dan membuat tampilan meja makanmu nampak lebih mewah berkelas. Berkat kehadiranku, momen makan malam akan terasa lebih lengkap dan menyenangkan.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/b/l/bl01.jpg'),
(58, 'Talenan Kayu Tarra', 'Rp 175.000', '\nWadah Potong Kuat Lengkapi Momen Masak  Kalau kamu punya hobi masak, berarti kamu butuh aku. Hai, aku talenan kayu Tarra! Aku terbuat dari material kayu mahoni solid yang menjadikanku cukup kuat. Kamu bebas menggunakan aku untuk kegiatan potong memotong. Pada bagian pinggir tubuhku ada potongan setengah lingkaran yang berfungsi sebagai tempat kamu meletakkan piring untuk wadah potong. Permukaanku yang halus membuatmu tak perlu khawatir akan serat kayu yang akan menempel pada bahan makanan. Jangan lupa hadirkan aku di dapurmu, ya!  ', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/w/o/wooden_cutting_tray_3.jpg'),
(59, 'Keranjang Sandhurst', 'Rp 195.000', 'Sandhurst Basket merupakan keranjang serbaguna berbahan rotan berkualitas yang berdesain kontemporer, menjadikannya tempat ideal menyimpan alat tulis atau peralatan makan Anda dan keluarga dengan lebih rapi, manis, dan tertata. Selain itu, keranjang ini juga memberikan kemudahkan bagi anda untuk mengorganisir barang-barang kecil Anda. Pilihan yang tepat bagi anda yang menginginkan sentuhan baru pada rumah Anda.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/s/a/sandhurst_basket_1.jpg'),
(60, 'Keranjang Savoy', 'Rp 195.000', 'Savoy Basket merupakan keranjang serbaguna berbahan rotan berkualitas yang berdesain kontemporer, menjadikannya tempat ideal menyimpan alat tulis atau peralatan makan Anda dan keluarga dengan lebih rapi, manis, dan tertata. Selain itu, keranjang ini juga memberikan kemudahkan bagi anda untuk mengorganisir barang-barang kecil Anda. Pilihan yang tepat bagi anda yang menginginkan sentuhan baru pada rumah Anda.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/s/a/savoy_basket_1.jpg'),
(61, 'Baki Teddy', 'Rp 525.000', 'Teddy Tray merupakan nampan berbahan kayu jati yang didesain elegan dengan bentuk bulat dan pilihan warna coklat, cocok untuk menyajikan roti saat sarapan pagi maupun tempat kue teman minum teh Anda. Finishing naturalnya menghadirkan kecantikan tekstur kayu sehingga dapat Anda manfaatkan juga sebagai aksen dekorasi atau alas di atas meja.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/t/e/teddy_tray_2.jpg'),
(62, 'Mangkuk Dawson', 'Rp 99.000', 'Dawson Vegetable Bowl merupakan mangkok berbahan keramik berkualitas yang aman digunakan di microwave dan dishwasher, serta mudah dibersihkan. Dapat digunakan untuk makanan panas maupun dingin.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/d/a/dawson_vegetable_1.jpg'),
(63, 'Baki Alpine (3 set)', 'Rp 995.000', 'Alpine Tray [Set of 3] adalah nampan berbahan anyaman rotan yang didesain simpel dan elegan, cocok untuk menyajikan roti saat sarapan pagi maupun tempat kue teman minum teh Anda. Finishing naturalnya menghadirkan kecantikan tekstur rotan sehingga dapat Anda manfaatkan juga sebagai aksen dekorasi atau alas di atas meja.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/a/l/alpine_tray_1.jpg'),
(64, 'Piring Whitey', 'Rp 24.900', 'Wadah Saji Masakan Enak Mama\n\nWah, Mama masak makanan favorit nih! Jadi nggak sabar buat makan siang di rumah, ya? Makin nggak sabar lagi karena Mama pakai piring Whitey, piring cantik yang bikin masakan Mama terlihat lebih menggugah selera. Aku terbuat dari material keramik yang aman digunakan untuk wadah makanan. Warna putih bersihku membuat aku memiliki kesan elegan jika diletakkan di atas meja makan. Desainku ceper sehingga bisa menampung masakan Mama dalam jumlah yang banyak.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/p/u/puritan_piring_4.jpg'),
(65, 'Cangkir Xavi', 'Rp 49.000', 'Si Teman Minum Cantik & Menarik\nHai, aku cangkir Xavi! Tampilanku yang cantik dan warna-warnaku yang menarik membuat aku menjadi benda kesayangan keluarga. Biasanya, aku digunakan untuk minum teh ataupun kopi, menemani kamu di waktu santai sore sambil ngemil cantik. Aku terbuat dari material keramik berkualitas yang tahan panas, jadi kamu nggak perlu khawatir kalau ingin meletakkan aku di microwave, aku kuat kok! ', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/g/e/gelas_pink_01.jpg'),
(66, 'Cangkir Sevia', 'Rp 50.000', '\"Si ‘Penghibur’ di Tengah Nuansa Monoton\nMeja kerjamu terasa monoton? Hmm, kayaknya kamu butuh aku, deh! Perkenalkan, aku cangkir Sevia! Aku terbuat dari keramik berkualitas dan memiliki warna pastel yang lembut, yang bisa membuat meja kerjamu nampak lebih cantik dan manis. Tampilanku yang menarik, pasti membuatmu ingin terus melihatku, deh. Eits, tapi jangan sampai hilang fokus, ya! Minum dulu, yuk, pakai cangkir Sevia!\n', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/s/e/sevia_mug_blue_01_1-removebg-preview.png'),
(67, 'Cermin Santiago', 'Rp 639.000', '', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/s/a/Santiago_Mirror_1.jpg'),
(68, 'Cermin Aloha', 'Rp 649.000', 'Nuansa Artistik yang Menyatu dengan Alam\n\nNilai artistik suatu hunian bisa dilambangkan dengan benda yang ada di dalamnya. Semakin unik pilihan hiasan yang Anda pilih, tentu kesan artistik akan semakin terasa.\n\nUntuk memperkuat kesan artistik tersebut, Anda bisa menjadikan Aloha Miror sebagai hiasan di ruangan favorit. Cermin ini memadukan gambaran unik dari desainnya dan citraan natural dari bahan dasarnya, yakni natural cane. Berbentuk matahari dengan warna khas rotan asli, Aloha Miror sangat mudah menyatu dengan seluruh warna ruangan.\nNB: Untuk produk yang memerlukan perakitan, akan dilakukan beberapa hari setelah produk dikirim. Apabila telah melebih dari 7 (tujuh) hari setelah produk dikirim belum ada tim kami yang menghubungi jadwal perakitan, Mohon segera hubungi tim Customer Service kami.', 'https://m2fabelio.imgix.net/catalog/product/cache/image/beff4985b56e3afdbeabfc89641a4582/a/l/Aloha_Mirror_1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
