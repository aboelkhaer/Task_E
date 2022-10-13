import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task_e/model/cart_model.dart';

class CartController extends GetxController {
  RxList cartItems = [].obs;
  RxInt cartCounter = 0.obs;

  @override
  void onInit() {
    getCartItems();
    super.onInit();
  }

  Future<void> getCartItems() async {
    final String response = await rootBundle.loadString('assets/cart.json');
    List data = json.decode(response)['cart'];
    cartItems.addAll(data.map((e) => CartModel.fromJson(e)).toList());
  }

  addItem() {
    cartCounter++;
  }

  removeItem() {
    cartCounter > 0 ? cartCounter-- : null;
  }
}
