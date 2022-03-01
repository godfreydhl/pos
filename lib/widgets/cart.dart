import 'package:flutter/material.dart';
import '../data/data.dart';

class CartItem extends StatefulWidget {
  final Product product;

  const CartItem({Key? key, required this.product}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  double quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Text(widget.product.name),
              Text(widget.product.unit),
              Text(widget.product.price.toString())
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(quantity.toString()),
          ),
          Text((quantity * widget.product.price).toString()),
        ],
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView(
          children: [...cart.map((e) => CartItem(product: e))],
        ));
  }
}
