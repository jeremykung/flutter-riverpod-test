import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(saleProductProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
              Text('hi'),
              Text(cartProducts.toString())
            // Column(
            //   children: [
            //     cartProducts.map((product, index) {
            //       return Column(
            //         children: [Image.asset(product[index].image)],
            //       );
            //     })
              // ], // output cart products here

            // output totals here
          ],
        ),
      ),
    );
  }
}
