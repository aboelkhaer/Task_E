import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_e/controller/cart_controller.dart';
import 'package:task_e/model/cart_model.dart';

class CartItem extends GetView<CartController> {
  CartModel cartModel;
  CartItem({super.key, required this.cartModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
              margin: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartModel.productName,
                ),
                Text(
                  '\$ ${cartModel.initialPrice.toString()}',
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => controller.removeItem(),
              icon: Icon(
                Icons.remove,
              ),
            ),
            Obx(
              () => Text(controller.cartCounter.toString()),
            ),
            IconButton(
              onPressed: () => controller.addItem(),
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
