import 'package:flutter/material.dart';
import 'package:pos/data/data.dart';

class productListDispaly extends StatefulWidget {
  const productListDispaly({Key? key}) : super(key: key);

  @override
  _productListDispalyState createState() => _productListDispalyState();
}

class _productListDispalyState extends State<productListDispaly> {
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

  Widget _buildCard(Product product) {
    return Card(
        elevation: 8,
        child: SizedBox(
          height: 25,
          width: 25,
          child: InkWell(
            onTap: () {
              null;
            },
            child: Column(
              children: [
                Text(product.name),
                Text(product.unit),
                Text(product.price.toString()),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: false,
      controller: _scrollController,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildCard(products[index]);
          }),
    );
  }
}
