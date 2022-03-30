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
      'assets/images/dadar.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
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
      'assets/images/teh.png',
      'assets/images/kopi.png',
      'assets/images/soda.png',
      'assets/images/boba.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
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
      'assets/images/kentang.png',
      'assets/images/or.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
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
      'assets/images/alpukat.png',
      'assets/images/jeruk.png',
      'assets/images/apel.png',
      'assets/images/semangka.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
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
      'assets/images/selada.png',
      'assets/images/tomato.png',
      'assets/images/brokoli.png',
      'assets/images/timun.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
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
      'assets/images/rtawar.png',
      'assets/images/baguette.png',
      'assets/images/wafel.png',
    ],
    kaloriList: [
      '200',
      '200',
      '200',
      '200',
    ],
  ),
];