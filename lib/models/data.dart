import '/models/product.dart';

List categories = [
  Category(
    title: "Shirts",
    image: "assets/images/hawaiian-shirt.png",
  ),
  Category(
    title: "Laptops",
    image: "assets/images/laptop-screen.png",
  ),
  Category(
    title: "Hijabs",
    image: "assets/images/woman.png",
  ),
  Category(
    title: "Shoes",
    image: "assets/images/shoes.png",
  ),
  Category(
    title: "Smartphones",
    image: "assets/images/smartphone.png",
  ),
];

List<Product> products = [
  Product(
      name: 'Hijab',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 10,
      images: 'assets/products/hijab1.png',
      price: 20,
      category: 'Hijab',
      oldPrice: 25),
  Product(
      name: 'Shirt',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 100,
      images: 'assets/products/shirt1.png',
      price: 22,
      category: 'Shirts',
      oldPrice: 30),
  Product(
      name: 'Shoes',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 100,
      images: 'assets/products/shoes4.PNG',
      price: 22,
      category: 'Shoes',
      oldPrice: 30),
  Product(
      name: 'Samsung',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 100,
      images: 'assets/products/samsung1.png',
      price: 600,
      category: 'Smartphones',
      oldPrice: 620),
  Product(
      name: 'iPhone',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 20,
      images: 'assets/products/iphone1.png',
      price: 1250,
      category: 'Smartphones',
      oldPrice: 1200),
  Product(
      name: 'Hp',
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      countInStock: 20,
      images: 'assets/products/hp3.png',
      price: 520,
      category: 'Laptops',
      oldPrice: 600),
];

class Category {
  String title;
  String image;

  Category({
    required this.title,
    required this.image,
  });
}

List<String> carouselImage = [
  'assets/images/slider1.png',
  'assets/images/slider2.png',
  'assets/images/slider3.png',
];
