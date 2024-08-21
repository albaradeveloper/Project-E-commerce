import 'package:flutter/material.dart';
import '../models/product.dart';
import '../../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'LapTop',
      description: 'Lenovo ThinkPad T440p',
      price: 499.99,
      imageUrl:
          'https://th.bing.com/th/id/R.f769feba7d81b240096c3dbe1d7696da?rik=VseqEnNd7Jr5ug&pid=ImgRaw&r=0',
    ),
    Product(
      id: 'P2',
      title: 'Mobile',
      description: 'Samsung A12',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.09uF1Zok3o-AiDDCRpjWmAHaEE?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'Teshirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.bK2ECyEjLc6O0YJMlylHiAHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'CCTV',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.ItIO1tYo9zyHeYDcGhFtkQHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'Car',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.cM7UKHY6r6Aifz2uzRSqzAHaD2?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'LapTop',
      description: 'Lenovo ThinkPad T440p',
      price: 499.99,
      imageUrl:
      'https://na3em.cc/wp-content/uploads/2018/08/2317-10.jpg',
    ),
    Product(
      id: 'P2',
      title: 'Mobile',
      description: 'Samsung A12',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.JryLHQFzuTgRG1GE6s5U4AHaIw?cb=12&rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'Teshirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://m.media-amazon.com/images/I/8107kOhQuOL.jpg',
    ),
    Product(
      id: 'p1',
      title: 'CCTV',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.eFmNdgU3LD0jlSMPy-fKMAHaHa?cb=12&rs=1&pid=ImgDetMain',
    ),
    Product(
      id: 'p1',
      title: 'Car',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/R.2b0afbafa15a486ca4d7943c011d85a5?rik=7ZoFZKI6Dsbuqw&pid=ImgRaw&r=0',
    ),

    // Add more products here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('MyShop',style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text(
                  "Mawda Aliabid",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Sarah123@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text(' Catogry '),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.card_travel),
              title: const Text(' My Card '),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Setting '),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
