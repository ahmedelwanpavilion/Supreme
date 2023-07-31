import 'package:supre_me/shared/images/images.dart';

class CategoryModel{
  String image;
  String title;
  CategoryModel({required this.title,required this.image});
}

List<CategoryModel> categories = [
  CategoryModel(title: 'Special Offer', image: Images.category3),
  CategoryModel(title: 'Mobile Phones', image: Images.category),
  CategoryModel(title: 'Appliances', image: Images.category2),
  CategoryModel(title: 'Laptop', image: Images.category4),
];

class ProductModel{
  String image;
  String title;
  String price;
  String rate;
  String desc;
  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rate,
    required this.desc,
});
}

List<ProductModel> products = [
  ProductModel(
    title: 'Conditioning',
    image: Images.product,
    desc: 'This is Conditioning',
    price: '5000',
    rate: '5.0'
  ),
  ProductModel(
    title: 'Washing Machine',
    image: Images.product2,
    desc: 'This is Washing Machine',
    price: '3000',
    rate: '4.0'
  ),
  ProductModel(
    title: 'Headphone',
    image: Images.product3,
    desc: 'This is Headphone',
    price: '1000',
    rate: '4.5'
  ),
  ProductModel(
    title: 'Conditioning',
    image: Images.product4,
    desc: 'This is Conditioning',
    price: '6000',
    rate: '4.7'
  ),
  ProductModel(
    title: 'Sand Disk',
    image: Images.product5,
    desc: 'This is Sand Disk',
    price: '500',
    rate: '4.9'
  ),
  ProductModel(
    title: 'Router',
    image: Images.product6,
    desc: 'This is Router',
    price: '1000',
    rate: '3.9'
  ),
];

List<ProductModel> tvs = [
  ProductModel(
    title: 'TV Samsung 30 Inch',
    image: Images.tv,
    desc: 'This is TV Samsung 30 Inch',
    price: '10000',
    rate: '5.0'
  ),
  ProductModel(
    title: 'TV LG 32 Inch',
    image: Images.tv2,
    desc: 'This is TV LG 32 Inch',
    price: '8000',
    rate: '4.0'
  ),
  ProductModel(
    title: 'TV LG 40 Inch',
    image: Images.tv3,
    desc: 'This is TV LG 40 Inch',
    price: '9000',
    rate: '4.5'
  ),
];

List<String> ads = [
  Images.ad,
  Images.ad2,
  Images.ad3,
];

