-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2021 pada 13.55
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig-teori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_marker`
--

CREATE TABLE `tb_marker` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `jam_buka` varchar(100) NOT NULL,
  `kontak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_marker`
--

INSERT INTO `tb_marker` (`id`, `nama`, `alamat`, `longitude`, `latitude`, `deskripsi`, `gambar`, `website`, `jam_buka`, `kontak`) VALUES
(1, 'RSUD Kabupaten Kediri', 'Jl. Pahlawan Kusuma Bangsa No.1, Cangkring, Pelem, Kec. Pare, Kediri', '112.17951', '-7.75976', 'Rapid Test (Covid-19)', '381.jpg', 'https://rsud.kedirikab.go.id/', 'Minggu - Kamis pukul 08.00 -14.00', '0354 391718'),
(2, 'RS HVA Toeloengredjo Kota Pare', 'Jl. A.Yani Timur No.25', '112.20028', '-7.76695', 'Swab PCR (Covid-19)', '442.jpg', 'https://www.rshva.com/', '24 jam\r\n', '(0354) 391145'),
(3, 'Klinik Ultra Medika Kediri', 'Jl. Teuku Umar No. 4, Kediri', '112.02096', '-7.81254', 'Rapid Test (Covid-19) Rapid Swab Antigen (Covid-19) Swab PCR (Covid-19)', '73.jpg', 'https://www.ultramedica.co.id/\r\n', 'Senin-Jumat = 07.00 - 21.00 WIB Sabtu = 07.00 - 19.00 WIB\r\n', '0354-684696'),
(4, 'RSGM IIK Bhakti Wiyata', 'Jl. KH. Wahid Hasyim 65, Kediri', '112.00933', '-7.81738', 'Rapid Test (Covid-19) dan PCR (Covid-19)', '624.jpg', 'https://rsgmiikbw.com/\r\n', 'Setiap hari pukul 08.00 - 13.00\r\n', '(0354) 774 040'),
(5, 'RSUD Ngudi Waluyo Wlingi', 'Jl. Dr. Soecipto No. 5 Wlingi', '112.31529', '-8.08289', 'Rapid Test (Covid-19) dan Swab PCR (Covid-19)', '225.jpg', 'https://rsudngudiwaluyo.blitarkab.go.id/index.php/en/\r\n', 'Setiap hari pukul 07.00 - 14.00\r\n', '(0342) 691006'),
(6, 'Rumah Sakit Mardi Waluyo', 'Jl. Kalimantan, Sananwetan, Kec. Sananwetan, Kota Blitar', '112.18043', '-8.10575', 'Rapid Test (Covid-19) dan Swab PCR (Covid-19)', '976.jpg', 'http://mardiwaluyo.blitarkota.go.id/\r\n', '24 jam', '(0342) 801118'),
(7, 'RS. WAVA HUSADA KESAMBEN', 'Jalan Kesamben Jugo No. 1, Kesamben, Kec. Kesamben, Blitar', '112.37171', '-8.14400', 'Rapid Antigen (Covid-19) Rapid Test Antibodi (Covid-19) RT-PCR (Covid-19)', '847.jpg', 'https://wavahusada.com/tag/kesamben/\r\n', '24 jam\r\n', '0341-393000'),
(8, 'RSK Budi Rahayu', 'Jalan Jendral Ahmad Yani No.18, Kepanjen Kidul, Kec. Kepanjenkidul, Kota Blitar', '112.17219', '-8.09916', 'Rapid Antibodi (Covid-19) Rapid Antigen (Covid-19 Swab PCR (Covid-19)', '378.jpg', 'http://budirahayu.com/budirahayu/\r\n', 'pukul 07.00 - 10.00\r\n', '0342- 801066'),
(9, 'Rumah Sakit Medika Utama', 'Jl. Kusuma Bangsa No.1, Kanigoro, Kec. Kanigoro, Blitar', '112.21373', '-8.12841', 'Swab PCR (Covid-19)', '329.jpg', 'https://linktr.ee/rsmedikautama\r\n', 'pukul 07.00 - 16.00\r\n', '+62 813-5818-3006'),
(10, 'RSI Aminah Blitar', 'Jl. Kenari No.54, Plosokerep, Kec. Sananwetan, Kota Blitar', '112.16340', '-8.11471', 'Rapid Test (Covid-19) Rapid Swab Antigen (Covid-19) Swab PCR (Covid-19) Rapid Test Antigen (Covid-19) Swab PCR (Covid-19) ', '8910.jpg', 'https://rsislamaminah.com/\r\n', 'pukul 08.00 - 15.00\r\n', '(0342)803552'),
(11, 'Oase House Clinic', 'Jl. Nusa Penida no. 36 Perum. GKR Sananwetan Blitar', '112.177856', '-8.105309', 'Swab PCR (Covid-19)', '8211.jpg', '-', 'Rabu, Kamis pukul 7.00-11.00, Rabu pukul 16.00-20.00\r\n', '85749861107'),
(12, 'RSU Ananda', 'ï¿½Jl. Mastrip No. 14 Srengat, (Depan Polsek Srengat)', '112.06207', '-8.06112', 'Swab Antigen (Covid-19)', '7112.jpg', 'https://rsuananda.com/\r\n', ' setiap hari pukul 07.00 – 09.00 WIB\r\n', '0342 553 472'),
(13, 'RSU AL-ITTIHAD', 'Jalan Raya, Togogan I, Togogan, Kec. Srengat, Blitar', '112.05340', '-8.05580', 'Rapid Test (Covid-19) Rapid Antigen (Covid-19)', '9213.jpg', 'https://rsu-alittihad.co.id/\r\n', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '0342 55 1715'),
(14, 'Lab Sumberwaras', 'Jl Seruni no 5, Kota Blitar', '112.16748', '-8.09908', 'Swab Antigen (Covid-19)', '7514.jpg', '-', 'setiap hari mulai pukul 06.00 – 21.00\r\n', '(0342) 801700'),
(15, 'DMP Klinik Blitar', 'Jl. Anggrek No.24 Lodoyo-Kab.Blitar', '112.21944', '-8.17017', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '216.jpg', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '082-229-461-207'),
(16, 'RS Syuhada Haji', 'Jl. Tanjung No.158, Pakunden, Kec. Sukorejo, Kota Blitar', '112.14096', '-8.09560', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '5016.jpg', 'https://www.syuhadahaji.com/\r\n', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', ' 0342 801607'),
(17, 'Stasiun Kota Blitar', 'Kepanjen Kidul, Kec. Kepanjenkidul, Kota Blitar, Jawa Timur', '112.16276', '-8.10070', 'Rapid Test (Covid-19)', '8317.jpg', 'https://heritage.kai.id/page/Stasiun%20Blitar\r\n', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', '-'),
(18, 'RSUD dr. Soedomo Trenggalek', 'Jl. DR. Sutomo No.2, Cengkong, Tamanan, Kec. Trenggalek, Kabupaten Trenggale', '111.70391', '-8.05890', 'Swab Test (Covid-29)', '1718.jpg', 'http://rsud.trenggalekkab.go.id/\r\n', 'Senin - Kamis pukul 07.00 - 10.30 Jumat 07.00 - 09.00\r\n', '-'),
(19, 'RSUD Nganjuk', 'JL. Dr. Soetomo No. 62 Nganjuk, Jawa Timur', '111.89467', '-7.60354', 'Rapid Test (Covid-19) ', '119.png', 'https://rsud.nganjukkab.go.id/\r\n', '24 jam\r\n', '(0358) 321818'),
(20, 'RS. Bhayangkara Nganjuk', 'Jl. Abdul Rahman Saleh No. 56, Kauman, Nganjuk', '111.89483', '-7.60036', 'Rapid Test (Covid-19)', '4720.png', 'https://rsbhayangkaranganjuk.com/\r\n', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '(0358) 351896'),
(21, 'Rumah Sakit Islam Aisyiyah', 'Jl. Imam Bonjol No. 20 Nganjuk', '111.90578', '-7.61068', 'Rapid Test (Covid-19)', '7221.jpg', 'https://rsiaisyiyahnganjuk.com/rawat-inap.html\r\n', '24 jam\r\n', '(0358) 324024'),
(22, 'Rumah Sakit Ayu Siwi', 'Jl. Mastrip I No.7, Nganjuk, Ganung Kidul, Kec. Nganjuk, Kabupaten Nganjuk', '111.90866', '-7.60202', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '2422.jpg', '-', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', '(0358) 323855'),
(23, 'Rsia Nganjuk', 'Jl. Anjuk Ladang No.21, Candirejo, Kec. Loceret, Kabupaten Nganjuk', '111.89690', '-7.62429', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '23', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '-'),
(24, 'Poliklinik RS Bhayangkara Nganjuk', 'Jl. A.R. Saleh No.57, Kauman, Kec. Nganjuk, Kabupaten Nganjuk', '111.89504', '-7.60035', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '24', '-\r\n', 'Senin - Jumat pukul 07.00 - 18.00\r\n', ' +62 853-3439-992'),
(25, 'RSIA ALF SUBTIN', 'Jl. Anjuk Ladang, Candirejo, Kec. Loceret, Kabupaten Nganjuk', '111.89497', '-7.63421', 'Rapid Test (Covid-19) Rapid Antigen (Covid-19)', '5425.jpg', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '8113506505'),
(26, 'Rsi. Aisyiyah Nganjuk', 'Jl. Imam Bonjol No.20, Payaman, Kec. Nganjuk, Kabupaten Nganjuk', '111.90587', '-7.61065', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '7126.jpg', 'https://rsiaisyiyahnganjuk.com/\r\n', '24 jam\r\n', '(0358) 324024'),
(27, 'RS Sumber Waras', 'Jl. Langsep No.3, Pelem, Kec. Kertosono, Kabupaten Nganjuk', '112.10526', '-7.59848', 'Rapid Test (Covid-19)', '6127.jpg', 'https://rssumberwaras.co.id/\r\n', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '021 5682011'),
(28, 'RSUD Kertosono', 'Jl. Panglima Sudirman No.16, Area Persawahan, Kepuh, Kec. Kertosono, Kabupaten Nganjuk', '112.09362', '-7.60049', 'Rapid Test (Covid-19)', '7528.jpg', 'https://rsudkertosono.nganjukkab.go.id/\r\n', 'Senin – Sabtu pukul 07.00 – 11.00\r\n', ' (0358) 5501503'),
(29, 'RS Budi Asih Trenggalek', 'Jl. Mayjen Sungkono No. 80, Trenggalek', '111.69768', '-8.05569', 'Rapid Test (Covid-19)', '6428.jpg', '-', 'Senin - Jumat pukul 07.00 - 18.00\r\n', '(0355) 794690'),
(30, 'Wijaya Kusuma Medika', 'Sukorejo, Gandusari, Tugu, Sukorejo, Kec. Trenggalek, Kabupaten Trenggalek', '111.69891', '-8.13555', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '6630.jpg', 'wijayakusumamedika@gmail.com\r\n', '24 jam\r\n', '-'),
(31, 'RSU Panggul', 'Jl. Panji Nawangkung, Karang, Wonocoyo, Panggul, Kabupaten Trenggalek', '111.45425', '-8.24786', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '531.jpg', '-', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', '-'),
(32, 'PUSKESMAS KAMPAK', 'Kemiri, Bendoagung, Kampak, Kabupaten Trenggalek', '111.66156', '-8.17376', 'Rapid Test (Covid-19)', '5232.jpg', '-', '24 jam\r\n', '0355-631086'),
(33, 'Klinik pratama Romo Wijoyo', 'Tugu, Sukorejo, Gandusari, Kabupaten Trenggalek', '111.69917', '-8.13725', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '3833.jpg', '-', '24 jam\r\n', '0355 - 811382'),
(34, 'RSUD Dr. Iskak Kab. Tulungagung', 'Jl. Dr. Wahidin Sudiro Husodo, Kedung Taman, Kedungwaru, Kec. Kedungwaru, Kabupaten Tulungagung', '111.91615', '-8.05449', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '1234.png', 'https://rsud.tulungagung.go.id/\r\n', '24 jam\r\n', '(0355) 322609'),
(35, 'Rumah Sakit Prima Medika Tulungagung', 'Jl. Ir. Soekarno Hatta No.27B, Kutoanyar, Kec. Tulungagung, Kabupaten Tulungagung', '111.88231', '-8.06923', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '1935.jpg', '-', 'Senin - Jumat pukul 07.00 - 18.00\r\n', '(0355) 5238353'),
(36, 'RS Putra Waspada Kota Tulungagung', 'Jl. Jayeng Kusuma No.66, Trimulyo, Ngujang, Kec. Kedungwaru, Kabupaten Tulungagung', '111.92013', '-8.02515', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '7736.jpg', 'www.rsputrawaspada.com\r\n', 'Senin – Sabtu pukul 07.00 – 11.00\r\n', '-'),
(37, 'RS. Era Medika Tulungagung', 'Jl. Raya Pulosari No.15, Karang Tengah, Pulosari, Kec. Ngunut, Kabupaten Tulungagung', '112.00253', '-8.09789', 'Rapid Antibodi (Covid-19) Rapid Antigen (Covid-19 Swab PCR (Covid-19)', '7637.jpg', 'rseramedika.com\r\n', 'Senin – Sabtu pukul 07.00 – 11.00\r\n', '(0355)-398706'),
(38, 'Rumah Sakit Islam Orpeha Tulungagung', 'Jl. KH Abdul Fatah No.80, Batangsaren, Kec. Kauman, Kabupaten Tulungagung', '111.87914', '-8.05033', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '1538.jpg', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '(0355) 327691'),
(39, 'Rumah Sakit Satiti Prima Husada', 'Balekambang, Balesono, Kec. Ngunut, Kabupaten Tulungagung, Jawa Timur', '111.98095', '-8.13979', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '2439.jpg', '-', 'Senin – Sabtu pukul 07.00 – 11.00\r\n', '(0355) 591637'),
(40, 'RS Bhayangkara Tulungagung', 'Gg. VI No.9A, Bago, Kec. Tulungagung, Kabupaten Tulungagung', '111.90735', '-8.06653', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '3740.jpg', 'http://rsbhayangkara-tulungagung.com/\r\n', 'Senin - Jumat pukul 07.00 - 18.00\r\n', '(0355) 331649'),
(41, 'RSIA FAUZIAH TULUNGAGUNG', 'Jl. Dr. Sutomo No.47, Tertek, Kec. Tulungagung, Kabupaten Tulungagung', '111.89456', '-8.06924', 'Rapid Antibodi (Covid-19) Rapid Antigen (Covid-19 Swab PCR (Covid-19)', '8341.jpg', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '(0355) 326 515'),
(42, 'Rumah Sakit Islam Madinah', 'Jl. Jatiwayang, RW.Lingk. 2, Kalangan, Kec. Ngunut, Kabupaten Tulungagung', '112.01366', '-8.11265', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '2942.jpg', 'rsimadinah@yahoo.co.id\r\n', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', '-'),
(43, 'RSIA Trisna Medika', 'Jalan Pahlawan No.216 RT.03/RW.02, Dusun Ketanon, Ketanon, Kec. Kedungwaru, Kabupaten Tulungagung', '111.91034', '-8.04379', 'Rapid Test (Covid-19) Rapid Test Swab Antigen (Covid-19)', '9043.jpg', 'rsia.trisna.medika@gmail.com\r\n', 'Setiap Hari pukul 07.00 s.d 14.00 WIB\r\n', '-'),
(44, 'RSIA Amanda', 'Jl. Mayor Sujadi Tulungagung, Jepun, Kec. Tulungagung, Kabupaten Tulungagung', '111.91486', '-8.07443', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '844.jpg', '-', '24 jam\r\n', '+62 355 325587'),
(45, 'Klinik Pratama Aisyiyah', 'Jl. KH Agus Salim No.69, Kenayan, Kec. Tulungagung, Kabupaten Tulungagung', '111.90296', '-8.05972', 'Rapid Antibodi (Covid-19) Rapid Antigen (Covid-19 Swab PCR (Covid-19)', '1845.jpg', '-', 'Senin – Sabtu pukul 08.00 – 10.00\r\n', '(0355) 5238048'),
(46, 'RS Muhammadiyah Bandung Tulungagung', 'Jl. Panglima Sudirman No.42, Bakah, Mergayu, Bandung, Kabupaten Tulungagung', '111.78315', '-8.16806', 'Rapid Test (Covid-19) Swab Antigen (Covid-19)', '3046.jpg', 'https://www.rsumbandungta.com/web/index\r\n', 'Pukul 08.00 s.d 12.00\r\n', '(0355) 532760');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'nada', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_marker`
--
ALTER TABLE `tb_marker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_marker`
--
ALTER TABLE `tb_marker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
