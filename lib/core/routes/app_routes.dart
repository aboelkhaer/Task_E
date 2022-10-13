import 'package:get/get.dart';
import 'package:task_e/core/bindings/cart_binding.dart';
import 'package:task_e/core/bindings/home_binding.dart';
import 'package:task_e/view/cart/cart_screen.dart';
import 'package:task_e/view/home/home_screen.dart';

class AppRoutes {
  static const String _home = '/';
  static String goToHomeRoute() => _home;

  static const String _cart = '/cart';
  static String goToCartRoute() => _cart;

  static List<GetPage> routes = [
    GetPage(
      name: _home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _cart,
      page: () => const CartScreen(),
      binding: CartBinding(),
    ),
  ];
}
