import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/providers/products_provider.dart';

class CartNotifier extends Notifier<Set<Product>> {

  @override
  Set<Product> build() {
    return const {
      Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png')
    };
  }

  void addProduct(Product product) {
    print('adding $product');
    if (!state.contains(product)) {
      state = { ...state, product };
    }
  }

  void removeProduct(Product product) {
    print('removing $product');
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
  
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});