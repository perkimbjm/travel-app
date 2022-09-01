class Travel {
  String name;
  String location;
  String url;
  String description;

  Travel(this.name, this.location, this.url, this.description);

  static List<Travel> generateTravel() {
    return [
      Travel('Air Terjun Mandin', 'Tanah Bumbu', 'assets/images/top1.jpg',
          'Air terjun Mandin Damar layak disebut sebagai The Hidden Paradise nya Borneo. Tempatnya sangat tersembunyi, berada di tengah belantara hutan Kalsel, tepatnya di Desa Gunung Raya, Kecamatan Mentewe Kabupaten Tanah Bumbu. Untuk mengakses air terjun ini perlu trekking terlebih dahulu sejauh 5 km dari kantor Kepala Desa. Tapi dalam petualangan itu akan ada suguhan pemandangan dan panorama alam yang mengesankan di sepanjang rute.Dan lelah itu akan terbayarkan dengan sensasi mandi di bawah guyuran air terjun yang segar dan jernih.'),
      Travel('Goa Batu Hapu', 'Tapin', 'assets/images/top2.jpg',
          'Kalau ingin melihat stalagmit dan stalaktit pada dasar dan langit goa, Goa Batu Hapu di Hatungun Kab. Tapin, Kalsel adalah destinasi yang tepat. Goa karst ini memiliki ruang yang luas dan tekstur dinding yang tidak biasa. Lubang di langit goa, yang membiarkan sinar matahari masuk juga menambah eksotisme goa itu sendiri. Keindahan goa ini bisa dinikmati dengan mudah. Selain karena lokasinya mudah dijangkau, akses masuk ke dalam goa juga tak sulit. Instagrammable banget, Yuk !'),
      Travel('Waduk Riam Kanan', 'Banjar', 'assets/images/top3.jpg', 'a'),
      Travel('Menara Pandang', 'Banjarmasin', 'assets/images/top4.jpg', 'b'),
    ];
  } // static List

  static List<Travel> generateMostPopular() {
    return [
      Travel('Pasar Terapung', 'Banjar', 'assets/images/bottom1.jpg', 'c'),
      Travel(
          'Loksado', 'Hulu Sungai Selatan', 'assets/images/bottom2.jpg', 'd'),
      Travel('Bukit Kaladan', 'Banjar', 'assets/images/bottom3.jpg', 'e'),
      Travel('Samber Gelap', 'Kotabaru', 'assets/images/bottom4.jpg', 'f'),
    ];
  } // static List

  static List<Travel> generateViewAll() {
    return [
      Travel('Air Terjun Mandin', 'Tanah Bumbu', 'assets/images/top1.jpg',
          'Air terjun Mandin Damar layak disebut sebagai The Hidden Paradise nya Borneo. Tempatnya sangat tersembunyi, berada di tengah belantara hutan Kalsel, tepatnya di Desa Gunung Raya, Kecamatan Mentewe Kabupaten Tanah Bumbu. Untuk mengakses air terjun ini perlu trekking terlebih dahulu sejauh 5 km dari kantor Kepala Desa. Tapi dalam petualangan itu akan ada suguhan pemandangan dan panorama alam yang mengesankan di sepanjang rute.Dan lelah itu akan terbayarkan dengan sensasi mandi di bawah guyuran air terjun yang segar dan jernih.'),
      Travel('Goa Batu Hapu', 'Tapin', 'assets/images/top2.jpg',
          'Kalau ingin melihat stalagmit dan stalaktit pada dasar dan langit goa, Goa Batu Hapu di Hatungun Kab. Tapin, Kalsel adalah destinasi yang tepat. Goa karst ini memiliki ruang yang luas dan tekstur dinding yang tidak biasa. Lubang di langit goa, yang membiarkan sinar matahari masuk juga menambah eksotisme goa itu sendiri. Keindahan goa ini bisa dinikmati dengan mudah. Selain karena lokasinya mudah dijangkau, akses masuk ke dalam goa juga tak sulit. Instagrammable banget, Yuk !'),
      Travel('Waduk Riam Kanan', 'Banjar', 'assets/images/top3.jpg', 'a'),
      Travel('Menara Pandang', 'Banjarmasin', 'assets/images/top4.jpg', 'b'),
      Travel('Pasar Terapung', 'Banjar', 'assets/images/bottom1.jpg', 'c'),
      Travel(
          'Loksado', 'Hulu Sungai Selatan', 'assets/images/bottom2.jpg', 'd'),
      Travel('Bukit Kaladan', 'Banjar', 'assets/images/bottom3.jpg', 'e'),
      Travel('Samber Gelap', 'Kotabaru', 'assets/images/bottom4.jpg', 'f'),
    ];
  } // static List

} //class Travel
