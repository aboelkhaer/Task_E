class CartModel {
  late String id;
  late String productId;
  late String productName;
  late int initialPrice;
  late int productPrice;
  late int quantity;
  final String color;
  CartModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.color,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json['id'],
        productId: json['productId'],
        productName: json['productName'],
        initialPrice: json['initialPrice'],
        productPrice: json['productPrice'],
        color: json['color'],
        quantity: json['quantity'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'productId': productId,
        'productName': productName,
        'initialPrice': initialPrice,
        'productPrice': productPrice,
        'color': color,
        'quantity': quantity,
      };
}
