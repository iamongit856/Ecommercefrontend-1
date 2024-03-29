import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // product for sale
  final List<Product> _shop = [
    // Game
    Product(
        name: "Game",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/game.jpg'),
    // Television
    Product(
        name: "Television",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/HD-TV.jpg'),
    // Mobile
    Product(
        name: "Mobile",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/mobile.jpg'),
    // Jacket
    Product(
        name: "Jacket",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/jacket.jpg'),
    // Shoes
    Product(
        name: "Shoes",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/shoe.jpg'),
    // Watch
    Product(
        name: "Watch",
        price: 99.99,
        description: "Item description...",
        imagePath: 'assets/watch.jpg')
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
