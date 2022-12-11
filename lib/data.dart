class Datashop {
  final String image;
  final String price;
  final String productName;
  final String stock;

  Datashop({
    required this.image,
    required this.price,
    required this.productName,
    required this.stock,
  });
}

final List<Datashop> datashop = [
  Datashop(
      image: '../assets/roti1.jpg',
      price: '500.000',
      productName: 'Roti kasur empuk',
      stock: '6 item'),
  Datashop(
      image: '../assets/roti2.jpg',
      price: '500.000',
      productName: 'Physycal',
      stock: '6 item'),
  Datashop(
      image: '../assets/roti3.jpg',
      price: '500.000',
      productName: 'roti tawar',
      stock: '6 item'),
  Datashop(
      image: '../assets/roti4.jpg',
      price: '500.000',
      productName: 'roti turki',
      stock: '6 item'),
  Datashop(
      image: '../assets/roti5.jpg',
      price: '500.000',
      productName: 'roti panjang',
      stock: '6 item'),
  Datashop(
      image: '../assets/roti6.jpg',
      price: '500.000',
      productName: 'roti burger',
      stock: '6 item'),
];
