import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugar Bomb',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Menu> menuList = [
    Menu(
      namaMenu: 'Strawberry Shortcake',
      harga: 'Rp 45.000',
      deskripsi: 'Kue lembut dengan lapisan krim manis dan potongan strawberry.',
      rating: 5,
      fotoUrl: 'https://www.japanesecooking101.com/wp-content/uploads/2014/11/IMG_8437.jpg',
    ),
    Menu(
      namaMenu: 'Japanese Souffle Cheesecake',
      harga: 'Rp 35.000',
      deskripsi: 'Kue dengan keju bergaya souffle yang berasal dari Jepang.',
      rating: 4,
      fotoUrl: 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/12/17/902889514.jpg',
    ),

    Menu(
      namaMenu: 'Honey Toast',
      harga: 'Rp 25.000',
      deskripsi: 'Roti panggang dengan topping madu dan ice cream di atasnya.',
      rating: 4,
      fotoUrl: 'https://videocdn-sbs.akamaized.net/u/video/SBS/managed/images/2023/03/06/2178934851985_03060203_image140418_full.jpg',
    ),

    Menu(
      namaMenu: 'Dorayaki',
      harga: 'Rp 15.000',
      deskripsi: 'Kue berbentuk bulat yang direkatkan dengan isian.',
      rating: 4,
      fotoUrl: 'https://cdn0-production-images-kly.akamaized.net/oRqrf6HpmXipqA8gbT7j53qej9M=/0x107:3913x2312/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4080458/original/044639200_1657090152-shutterstock_2103615638.jpg',
    ),

    Menu(
      namaMenu: 'Dango',
      harga: 'Rp 10.000',
      deskripsi: 'Kue Jepang yang terbuat dari tepung beras dan dikukus di dalam air.',
      rating: 4,
      fotoUrl: 'https://static.cdntap.com/tap-assets-prod/wp-content/uploads/sites/24/2022/07/dango-2.jpg',
    ),

    Menu(
      namaMenu: 'Taiyaki',
      harga: 'Rp 10.000',
      deskripsi: 'Kue berbentuk ikan yang dipanggang dan diberi isian selai kacang merah.',
      rating: 4,
      fotoUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbmNLFIr9OWsIX_LnuQkFJcwpDCumj8X0EnA&usqp=CAU',
    ),
   
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sugar Bomb', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.pink[300]
        ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(menuList[index]);
        },
      ),
      ),
    );
  }

  Widget _buildMenuItem(Menu menu) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(16.0),
      color: Colors.pink[40],
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
              menu.fotoUrl,
              fit: BoxFit.cover
            )
            ),
            SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu.namaMenu,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    menu.harga,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    menu.deskripsi,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      for (int i = 0; i < menu.rating; i++)
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 16.0,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu {
  String namaMenu;
  String harga;
  String deskripsi;
  int rating;
  String fotoUrl;

  Menu({
    required this.namaMenu,
    required this.harga,
    required this.deskripsi,
    required this.rating,
    required this.fotoUrl,
  });
}