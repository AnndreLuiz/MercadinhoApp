import 'package:flutter/material.dart';
import 'package:mercadinhoapp/model/cart_model.dart';
import 'package:mercadinhoapp/pages/intro_pages.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPages(),
      ),
    );
  }
}
