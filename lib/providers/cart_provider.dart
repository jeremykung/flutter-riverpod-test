import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {

  @override
  Set<Product> build() {
    return const {
      Product(
        id: '5', 
        title: 'Red Backpack', 
        price: 14, 
        image: 'assets/products/backpack.png'
      ),
    };
  }
  
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});