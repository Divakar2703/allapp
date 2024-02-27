class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: 'Beauty',
    imagePath: "https://grossry.56testing.club/grossry/media/category/clean.png",
  ),
  CategoryItem(
    name:      'Baby Care',
    imagePath:  "http://grossry.56testing.club/grossry/media/category/child2.png",
  ),
  CategoryItem(
    name:      'Vegetables',
    imagePath:  "http://grossry.56testing.club/grossry/media/category/app.png",
  ),
  CategoryItem(
    name:      'Masalas',
    imagePath:  "http://grossry.56testing.club/grossry/media/category/oil.png",
  ),
  CategoryItem(
    name:      'Beverages',
    imagePath:  "http://grossry.56testing.club/grossry/media/category/red1.png",
  ),
  CategoryItem(
    name:      'Fruit',
    imagePath:  "http://grossry.56testing.club/grossry/media/category/apple.png",
  ),
];
