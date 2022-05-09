class MenuModel {
  final String nama, deskripsi, alamat, fotoUtama,url;
  final int harga;
  final List<String> urlPhotos;
  bool isFavorite;

  MenuModel(
      {required this.nama,
      required this.deskripsi,
      required this.alamat,
      required this.fotoUtama,
      required this.harga,
      required this.urlPhotos,
      required this.isFavorite,
      required this.url
      });
}

final listMenu = <MenuModel>[
  MenuModel(
      nama: 'Soto Lamongan Cak To',
      url: 'https://goo.gl/maps/ej47RNsikG9zbfQn6',
      deskripsi:
          'Soto Ayam Cak To has two branch in Undaan Wetan 10th and Gubeng Kertajaya V Raya 19th, Surabaya. A bowl of Soto Ayam Cak To consist of slices of chicken, and then drown into yellow chicken broth. Soto Ayam Cak To opens every day until everning. Many people likes to get a breakfast here.',
      alamat: 'Surabaya',
      harga: 25000,
      isFavorite: false,
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/soto1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/soto1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/soto2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/soto3/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/soto4/view?project=eastjavaculinary',
      ]),
  MenuModel(
      nama: 'Pecel Madiun 99',
      url: 'https://goo.gl/maps/LQVYWa6JXq9uhQ9z9',
      deskripsi:
          "Visiting Madiun in Jawa Timur is not perfect without eating the city's signature dish, Pecel.Pecel consist of boiled vegetables like cabbage, One of the special place to get Pecel is Pecel 99 in Cokroaminoto 99th street.",
      alamat: 'Madiun',
      harga: 7000,
      isFavorite: false,
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/pecel1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/pecel1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/pecel2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/pecel3/view?project=eastjavaculinary',
      ]),
  MenuModel(
      nama: 'Sate Ayam Ponorogo H.Tukri',
      url: 'https://goo.gl/maps/57QPwGJsT9cJCBPi7',
      deskripsi:
          ' Pasangan Tukri dengan Amini membuka usaha sate ayam tahun 1975. Kala itu penjual sate biasanya memikul dagangannya keliling dari kampung ke kampung, Tukri dan Amini memilih berjualan di emperan toko. Menempati satu tempat ternyata menguntungkan bagi Tukri dan Amini karena para pembelinya mudah mencari makanan tersebut. Kala itu sudah banyak pejabat yang menjadi pelanggan, seperti dari kepolisian dan instansi pemerintah. Pada 1995, ia membuka warung kecil-kecilan di Jalan Lawu Gang I Nomor 43 K Kota Ponorogo dan pada puluhan tahun kemudian tempat itu menjadi rumah makan besar dan dikunjungi banyak tokoh penting. Usaha itu kini mampu menyerap 25 tenaga kerja.',
      alamat: 'Ponorogo',
      isFavorite: false,
      harga: 21000,
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/sate1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/sate1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/sate2/view?project=eastjavaculinary',
      ]),
  MenuModel(
      nama: 'Bakso Bakar Presiden',
      url: 'https://goo.gl/maps/WZeb2qpbG758mq989',
      deskripsi:
          'Bakso bakar ini cukup sederhana dioles kecap usai dibakar di atas arang. Rasa manisnya kecap ternyata sangat cocok dipadukan dengan daging bakso yang gurih. Taburan bawang goreng di atasnya juga bikin nikmatnya kian melejit lho!',
      harga: 12000,
      isFavorite: false,
      alamat: 'Malang',
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/baso1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/baso1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/baso2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/baso3/view?project=eastjavaculinary',
            
      ]),
  MenuModel(
      nama: 'Lontong Kupang Pak Misari',
      url: 'https://goo.gl/maps/vfeHkyPACWwTCneT7',
      deskripsi:
          'Tempat makan lontong kupang Pak Misari ini merupakan salah satu tempat yang laris di Sidoarjo. Berdiri sejak tahun 1993 dan selalu ramai pengunjung. Apalagi, bumbu racikan dan proses pembuatannya dilakukan sendiri oleh Pak Misari.',
      alamat: 'Sidoarjo',
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/kupang1/view?project=eastjavaculinary',
      harga: 17000,
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/kupang1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/kupang2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/kupang3/view?project=eastjavaculinary',
        
      ],
      isFavorite: false),
  MenuModel(
      nama: 'Bebek Sinjay',
      url: 'https://goo.gl/maps/kaqasqqj39b45TWx8',
      deskripsi:
          'Bebek Sinjay berasal dari kota Bangkalan, Madura. Namun kini Bebek Sinjay tersebar di beberapa titik di Kota Surabaya. Sebelum tersebar luas di Surabaya, wisatawan rela menyeberang ke Madura untuk mencicipi Bebek Sinjay. Bebek Sinjay dihidangkan dengan sambal yang unik hasil racikan masyarakat Jawa Timur yaitu sambel pencit.',
      alamat: 'Surabaya',
      harga: 25000,
      isFavorite: false,
      fotoUtama:'http://192.168.100.10/v1/storage/buckets/images/files/sinjay1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/sinjay1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/sinjay2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/sinjay3/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/sinjay4/view?project=eastjavaculinary',
        
      ]),
  MenuModel(
      nama: 'Rawon Nguling',
      url: 'https://goo.gl/maps/hoRUPRv6pnyrq4QB6',
      deskripsi:
          'Kedai Rawon Nguling ini sangat terkenal di Surabaya. Kedainya telah buka sejak tahun 1940-an dengan menu yang masih otentik sejak dirintis oleh Mbah Karyoredjo.',
      alamat: 'Surabaya',
      harga: 20000,
      isFavorite: false,
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/rawon1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/rawon1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/rawon2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/rawon3/view?project=eastjavaculinary',
        
      ]),
  MenuModel(
      nama: 'Es Dawet Kudus Cak Minto',
      url: 'https://g.page/dawetkuduscakminto?share',
      alamat: 'Surabaya ',
      deskripsi:
          'Surabaya yangt panas kerap kali membuat seseorang ingin mencari yang segar-segar. Salah satu minuman segar yang ramai dikunjungi adalah Es Dawet Kudus Cak Minto Jalan Mayjen Sungkono No 5.',
      harga: 8000,
      isFavorite: false,
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/dawet1/view?project=eastjavaculinary',
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/dawet1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/dawet2/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/dawet3/view?project=eastjavaculinary',
      ]),
  MenuModel(
      nama: 'Ayam Goreng Bu Sri Pandaan',
      url: 'https://goo.gl/maps/eR8EBj9L7MHFMoGV7',
      alamat: 'Pasuruan',
      deskripsi:
          'Berada di depan Taman Wiltatikta, Ayam Goreng Bu Sri memang lebih strategis. Belum lagi besarnya restoran yang juga menyediakan ruang pertemuan itu. Kapasitas kursi restorannya bisa menampung ratusan orang.',
      fotoUtama: 'http://192.168.100.10/v1/storage/buckets/images/files/ayam1/view?project=eastjavaculinary',
      harga: 100000,
      isFavorite: false,
      urlPhotos: [
        'http://192.168.100.10/v1/storage/buckets/images/files/ayam1/view?project=eastjavaculinary',
        'http://192.168.100.10/v1/storage/buckets/images/files/ayam2/view?project=eastjavaculinary',
      ])
];
