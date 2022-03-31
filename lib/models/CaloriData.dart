class CaloriData {
  String title;
  String image;
  List<String> foodNameList;
  List<String> imageList;
  List<String> kaloriList;
 
  CaloriData({
    required this.title,
    required this.image,
    required this.foodNameList,
    required this.imageList,
    required this.kaloriList,
  });
}

var caloriDataList = [
  //Food
  CaloriData(
    title: 'Food',
    image: 'assets/images/food.png',
    foodNameList: [
      'Sate',
      'Ramen',
      'Salad',
      'Sunny Side Up Egg',
    ],
    imageList: [
      'assets/images/sate.png',
      'assets/images/ramen.png',
      'assets/images/salad.png',
      'assets/images/egg.png',
    ],
    kaloriList: [
      '681 Cal',
      '436 Cal',
      '9 Cal',
      '92 Cal',
    ],
  ),

  //Drink
  CaloriData(
    title: 'Drink',
    image: 'assets/images/drink.png',
    foodNameList: [
      'Tea',
      'Coffe',
      'Soda',
      'Bubble Tea',
    ],
    imageList: [
      'assets/images/tea.png',
      'assets/images/coffe.png',
      'assets/images/soda.png',
      'assets/images/bubbletea.png',
    ],
    kaloriList: [
      '73 Cal',
      '76 Cal',
      '110 Cal',
      '160 Cal',
    ],
  ),

  //FastFood
  CaloriData(
    title: 'Fast Food',
    image: 'assets/images/fastfood.png',
    foodNameList: [
      'Burger',
      'Pizza',
      'French Fries',
      'Onion Rings',
    ],
    imageList: [
      'assets/images/burger.png',
      'assets/images/pizza.png',
      'assets/images/frenchfries.png',
      'assets/images/onionrings.png',
    ],
    kaloriList: [
      '389 Cal',
      '523 Cal',
      '352 Cal',
      '276 Cal',
    ],
  ),

  //Fruit
  CaloriData(
    title: 'Fruit',
    image: 'assets/images/fruit.png',
    foodNameList: [
      'Avocado',
      'Orange',
      'Apple',
      'Watermelon',
    ],
    imageList: [
      'assets/images/avocado.png',
      'assets/images/orange.png',
      'assets/images/apple.png',
      'assets/images/watermelon.png',
    ],
    kaloriList: [
      '322 Cal',
      '63 Cal',
      '107 Cal',
      '86 Cal / Slice',
    ],
  ),

  //Vegetable
  CaloriData(
    title: 'Vegetable',
    image: 'assets/images/vegetable.png',
    foodNameList: [
      'Letuce',
      'Tomato',
      'Broccoli',
      'Cucumber',
    ],
    imageList: [
      'assets/images/lettuce.png',
      'assets/images/tomato.png',
      'assets/images/broccoli.png',
      'assets/images/cucumber.png',
    ],
    kaloriList: [
      '1 Cal',
      '22 Cal',
      '34 Cal',
      '45 Cal',
    ],
  ),

  //Bread
  CaloriData(
    title: 'Bread',
    image: 'assets/images/bread.png',
    foodNameList: [
    'Croissant',
    'White Bread',
    'Baguette',
    'wafel'
    ],
    imageList: [
      'assets/images/croissant.png',
      'assets/images/whitebread.png',
      'assets/images/baguette.png',
      'assets/images/wafel.png',
    ],
    kaloriList: [
      '232 Cal',
      '78 Cal',
      '150 Cal',
      '218 Cal',
    ],
  ),
];