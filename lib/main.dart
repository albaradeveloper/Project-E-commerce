import 'package:ecommerce_app/providers/products.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'دكان خضار',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
