import 'package:flutter/material.dart';
import '../models/product.dart';
import '../../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: '1',
      title: 'بيتزا',
      description: 'بيتزا بالحمه',
      price: 499.99,
      imageUrl:
          'https://th.bing.com/th/id/R.a55802f0374676c731d4715c463bfb19?rik=qFdO%2ft7RJWWfYA&pid=ImgRaw&r=0',
    ),
    Product(
      id: '2',
      title: 'بيرقر',
      description: 'بيرقر كبير',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.bR0IZ8zNzSTCnA0fMMz-xQHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '3',
      title: 'فطيرة',
      description: 'فطيرة مالحه',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.Lp3-w2dWwfOu54VczRRYMwHaE8?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '4',
      title: 'شاورما',
      description: 'شاورما دجاج',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.s_jj-zisu7o8DVzvAcuVTQHaE8?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '5',
      title: 'كرسبي',
      description: 'كرسبي',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.VVzczdSTLUPkyE3CUngYVgHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '6',
      title: 'شيش طاووق',
      description: 'شيش',
      price: 499.99,
      imageUrl:
      'https://th.bing.com/th/id/R.2f0aee56c23874d6fc17fe66d71be658?rik=CpH%2fh3ntnj7JGQ&pid=ImgRaw&r=0',
    ),
    Product(
      id: '7',
      title: 'سمك',
      description: 'سمك محمر',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/R.6ef8a04c67906215cdafc78d207e3249?rik=lLNVddUSHfXyVQ&pid=ImgRaw&r=0',
    ),


    // Add more products here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('مطعم العـافية',style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                accountName: Text(
                  "user name",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("emailaddress@gmail.com"),
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
        padding:  EdgeInsets.all(10.0),
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
