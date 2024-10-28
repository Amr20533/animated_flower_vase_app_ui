class VaseModel{
  final String title;
  final String description;
  final String image;
  final double price;
  int quantity;

  VaseModel({required this.title, required this.description, required this.image, this.quantity = 1, required this.price});

  static List<VaseModel> flowerVase = [
    VaseModel(
      title: "Orchid Vase",
      description: "Beautiful vase from Korto Boda designed by Goran Worff",
      image: 'assets/images/vase_0.png',
      price: 29.99,
    ),
    VaseModel(
      title: "Elegant Tulip Vase",
      description: "Sleek and modern vase crafted from high-quality glass.",
      image: 'assets/images/vase_07.png',
      price: 39.99,
    ),
    VaseModel(
      title: "Minimalist Stone Vase",
      description: "A simple yet elegant stone vase, ideal for contemporary settings.",
      image: 'assets/images/vase_3 1.png',
      price: 24.99,
    ),
    VaseModel(
      title: "Vintage Crystal Vase",
      description: "Intricate crystal vase that adds a touch of elegance to any arrangement.",
      image: 'assets/images/vase_05.png',
      price: 49.99,
    ),
  ];

}