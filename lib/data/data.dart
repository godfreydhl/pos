class Product {
  final String name;
  final String id;
  double price;
  double quantity;
  final String unit;

  Product({
    required this.name,
    required this.id,
    required this.price,
    required this.quantity,
    required this.unit,
  });
}

final List<Product> products = <Product>[
  Product(
      name: 'Mahatma White Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Hullets Brown Sugar',
      id: '000001',
      price: 3.00,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
  Product(
      name: 'Mahatma Rice',
      id: '000001',
      price: 3.45,
      quantity: 45,
      unit: '2kg'),
];

List<Product> cart = <Product>[];

void addToCart(Product product) {
  cart.add(product);
}

void removeFromCart(Product product) {
  cart.remove(product);
}
