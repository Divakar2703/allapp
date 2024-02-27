class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "Fresh brokkly",
      description: "Qty /Unit : 1 kg",
      price: 99,
      imagePath: "assets/images/aalu.png"),
  GroceryItem(
      id: 2,
      name: "Red Apple",
      description: "1kg, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/apple.png"),
  GroceryItem(
      id: 3,
      name: "Soap",
      description: "Qty /Unit : 200 g",
      price: 49,
      imagePath: "assets/images/grocery_images/pepsi.png"),
  GroceryItem(
      id: 4,
      name: "Soap",
      description: "Qty /Unit : 500 g",
      price: 95,
      imagePath: "assets/images/img.png"),
  GroceryItem(
      id: 5,
      name: "Brookly",
      description: "Qty /Unit : 2 Kg",
      price: 190,
      imagePath: "assets/images/grocery_images/choco.png"),
  // GroceryItem(
  //     id: 6,
  //     name: "Chikken",
  //     description: "250gm, Priceg",
  //     price: 4.99,
  //     imagePath: "assets/images/grocery_images/chicken.png"),
];

var exclusiveOffers = [demoItems[0], demoItems[1],demoItems[2], demoItems[3]];

var bestSelling = [demoItems[4], demoItems[3],demoItems[2], demoItems[3]];

var groceries = [demoItems[4],demoItems[2], demoItems[3],demoItems[2], demoItems[3]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      price: 1.99,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  GroceryItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/sprite.png"),
  GroceryItem(
      id: 8,
      name: "Apple Juice",
      description: "2L, Price",
      price: 15.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  GroceryItem(
      id: 9,
      name: "Orange Juice",
      description: "2L, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  GroceryItem(
      id: 10,
      name: "Coca Cola Can",
      description: "325ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/coca_cola.png"),
  GroceryItem(
      id: 11,
      name: "Pepsi Can",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/pepsi.png"),
  GroceryItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      price: 1.99,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  GroceryItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/sprite.png"),
];
