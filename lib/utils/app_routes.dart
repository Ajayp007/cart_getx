import 'package:cart_getx/screen/cart/view/cart_screen.dart';
import 'package:cart_getx/screen/detail/view/product_detail.dart';
import 'package:flutter/material.dart';

import '../screen/home/view/home_screen.dart';

Map<String,WidgetBuilder> appRoutes ={
  '/':(context) => const HomeScreen(),
  'detail':(context) => const ProductDetail(),
  'cart':(context) => const CartScreen(),
};