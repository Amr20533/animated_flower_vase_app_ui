class VaseModel{
  final String title;
  final String description;
  final String image;

  VaseModel({required this.title, required this.description, required this.image});
  
  static List<VaseModel> flowerVase = [
    VaseModel(title: "Orchid Vase", description: "Beautiful vase form Korto Boda designed by Goran Worff", image: 'assets/images/vase_0.png'),
    VaseModel(title: "Elegant Tulip Vase", description: "Sleek and modern vase crafted from high-quality glass.", image: 'assets/images/vase_07.png'),
    VaseModel(title: "Minimalist Stone Vase", description: "A simple yet elegant stone vase, ideal for contemporary settings.", image: 'assets/images/vase_3 1.png'),
    VaseModel(title: "Vintage Crystal Vase", description: "Intricate crystal vase that adds a touch of elegance to any arrangement.", image: 'assets/images/vase_05.png'),

  ];
}