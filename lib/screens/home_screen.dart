import 'package:flutter/material.dart';
import '../models/product.dart';
import '../../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: '1',
      title: 'سلطـة',
      description: 'سلطة مشكلة',
      price: 499.99,
      imageUrl:
          'https://th.bing.com/th/id/R.a04eee66e3a5f5d144f8eb29861b329a?rik=AgU6Iarz6O63nw&riu=http%3a%2f%2fwww.alrakia.com%2fwp-content%2fuploads%2f2017%2f10%2f%d8%a7%d9%84%d8%ae%d8%b6%d8%a7%d8%b1.jpg&ehk=zRUBaIHZDr1HXIS3t1SLV%2fuffnqHdiNY5nRAwmgEUe4%3d&risl=&pid=ImgRaw&r=0',
    ),
    Product(
      id: '2',
      title: 'فلفل حلو',
      description: 'فلفل',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.e66-y-8QJELKqyamozBI4wHaEK?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '3',
      title: 'شطة خضراء',
      description: '',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.yLeJ5ELFsZUOkeCubo1ENAHaEV?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '4',
      title: 'طماطم',
      description: '',
      price: 29.99,
      imageUrl:
      'https://www.washingtonfamily.com/wp-content/uploads/2022/04/GettyImages-1258142863-1024x742.jpeg',
    ),
    Product(
      id: '5',
      title: 'بصل',
      description: '',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.cEbHuF6X_kZ6ItS2EXpw2gHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '6',
      title: 'جرجير',
      description: '',
      price: 499.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.rJMWBnXihJV_aiUBfpPYFwHaEc?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '7',
      title: 'بنجر',
      description: '',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/OIP.qDZaFeJcMHdHIlTWq02JPwHaHa?rs=1&pid=ImgDetMain',
    ),
    Product(
      id: '7',
      title: 'خيار',
      description: '',
      price: 29.99,
      imageUrl:
      'https://th.bing.com/th/id/R.e1e66393dd3df73ed0954c0ff181ab6e?rik=zyYaISLpckUmUw&pid=ImgRaw&r=0',
    ),


    // Add more products here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('دكـان خُضـار',style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
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
