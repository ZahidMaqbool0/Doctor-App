import 'package:doctorapp/model/cart_model.dart';
import 'package:doctorapp/model/store_product_model.dart';
import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> _cartData = [];
  int _selectedProducts = 1;

  List<CartModel> get getCartData => _cartData;

  int get getSelectedProducts => _selectedProducts;

  double get getSubTotal => _subTotal();

  double get getTaxAmount => _subTotal() * 0.01;

  double get getGrandTotal => _subTotal() + getTaxAmount;

  fetchStoreProduct(
    String imageUrl,
    String name,
    String unit,
    int quantity,
    double price,
    double discountedPrice,
  ) {
    _cartData.add(
      CartModel(
        imageUrl: imageUrl,
        name: name,
        unit: unit,
        discount: discountedPrice,
        price: price,
        amount: _selectedProducts,
      ),
    );
    notifyListeners();
    _selectedProducts = 1;
    return _cartData;
  }

  void incrementProducts() {
    _selectedProducts++;
    notifyListeners();
  }

  void decrementProducts() {
    if (_selectedProducts > 1) {
      _selectedProducts--;
      notifyListeners();
    }
  }

  void incrementProductsInCart(int index) {
    if (index >= 0 && index < _cartData.length) {
      _cartData[index].amount += 1;
      notifyListeners();
    }
  }

  void decrementProductsInCart(int index) {
    if (index >= 0 && index < _cartData.length) {
      if (_cartData[index].amount > 1) {
        _cartData[index].amount -= 1;
        notifyListeners();
      }
    }
  }

  void deleteCart(int index) {
    if (index >= 0 && index < _cartData.length) {
      _cartData.removeAt(index);
      notifyListeners();
    }
  }

  double _subTotal() {
    double subTotalPrice = 0;

    for (var item in _cartData) {
      double itemPrice = item.discount != 0 ? item.discount : item.price;

      subTotalPrice += itemPrice * item.amount;
    }
    return subTotalPrice;
  }
}
