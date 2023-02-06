import 'package:nopeinc_app/src/pages/client/orders/list/client_orders_list_page.dart';
import 'package:nopeinc_app/src/pages/client/update/client_update_page.dart';
import 'package:nopeinc_app/src/pages/delivery/orders/list/delivery_orders_list_page.dart';
import 'package:nopeinc_app/src/pages/login/login_page.dart';
import 'package:nopeinc_app/src/pages/register/register_page.dart';
import 'package:nopeinc_app/src/pages/restaurant/categories/create/restaurant_categories_create_page.dart';
import 'package:nopeinc_app/src/pages/restaurant/orders/list/restaurant_orders_list_page.dart';
import 'package:nopeinc_app/src/pages/restaurant/products/create/restaurant_products_create_page.dart';
import 'package:nopeinc_app/src/pages/roles/roles_page.dart';
import 'package:nopeinc_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nope INC App',
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'register' : (BuildContext context) => RegisterPage(),
        'roles' : (BuildContext context) => RolesPage(),
        'client/update' : (BuildContext context) => ClientUpdatePage(),
        'client/orders/list' : (BuildContext context) => ClientOrdersListPage(),
        'restaurant/orders/list' : (BuildContext context) => RestaurantOrdersListPage(),
        'restaurant/categories/create' : (BuildContext context) => RestaurantCategoriesCreatePage(),
        'restaurant/products/create' : (BuildContext context) => RestaurantProductsCreatePage(),
        'delivery/orders/list' : (BuildContext context) => DeliveryOrdersListPage(),
      },
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
        appBarTheme: AppBarTheme(elevation: 0)
      ),
    );
  }
}
