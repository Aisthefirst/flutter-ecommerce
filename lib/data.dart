import 'package:flutter/cupertino.dart';

class Datashop {
  // final  image;
  final String price;
  final String productName;
  final String stock;

  Datashop({
    // required this.image,
    required this.price,
    required this.productName,
    required this.stock,
  });
}

final List<Datashop> datashop = [
  Datashop(

      // image: NetworkImage(
      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFsK6RlRLoTW9NI8gz2Y-E5rhY_81vgD2lunObQ5q9yxQeVnHInLVLdYfKxvXW7JmYjGo&usqp=CAU'),
      price: 'Founder Tidar`s Patisseries',
      productName: 'Roti',
      stock: '6 item'),
  Datashop(
      // image: NetworkImage(
      //     'https://www.quipper.com/id/blog/wp-content/uploads/2022/02/puff-pastry.webp'),
      price: 'Head chef ',
      productName: 'Puff Pastry',
      stock: '6 item'),
  Datashop(
      // image: NetworkImage(
      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr74TxZaBplXkmaBJbYhupL2wQJEIN1ZPqF-jQ_fSFJr8qpAJhZMUP_-6_C5lTqAgFJlw&usqp=CAU'),
      price: 'Head of Marketing',
      productName: 'Cheese roll',
      stock: '6 item'),
  Datashop(
      // image: NetworkImage(
      //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl5cSF0h4UZelIVf3_M6k8SyupSvwdltGoag&usqp=CAU'),
      price: 'Software Developer',
      productName: 'Pizza Cheese Brutallity',
      stock: '6 item'),
  Datashop(
      // image: NetworkImage(
      //     'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/15/c8ab43fb-b4dc-4878-a4c8-c017d1861c03.jpg'),
      price: 'Software Developer',
      productName: 'Muffin',
      stock: '6 item'),
  Datashop(
      // image: NetworkImage(
      //     'https://hips.hearstapps.com/vidthumb/images/delish-blueberry-cheesecake-still003-1557335639.jpg?crop=0.768xw:0.684xh;0.131xw,0.103xh&resize=1200:*'),
      price: 'Recipe Researcher',
      productName: 'Recipe Researcher',
      stock: '6 item'),
];
