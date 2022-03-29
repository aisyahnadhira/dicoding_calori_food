class CaloriData {
  String title;
  String image;
  String food1;
  String food2;
  String food3;
  String image1;
  String image2;
  String image3;
  String kal1;
  String kal2;
  String kal3;
 
  CaloriData({
    required this.title,
    required this.image,
    required this.food1,
    required this.food2,
    required this.food3,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.kal1,
    required this.kal2,
    required this.kal3,
  });
}

var caloriDataList = [
  //Food
  CaloriData(
    title: 'Food',
    image: 'assets/images/food.png',
    food1: 'Sate',
    food2: 'Ramen',
    food3: 'Salad',
    image1: 'assets/images/sate.png',
    image2: 'assets/images/ramen.png',
    image3: 'assets/images/salad.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),

  //Drink
  CaloriData(
    title: 'Drink',
    image: 'assets/images/drink.png',
    food1: 'Tea',
    food2: 'Coffe',
    food3: 'Soda',
    image1: 'assets/images/teh.png',
    image2: 'assets/images/kopi.png',
    image3: 'assets/images/soda.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),

  //FastFood
  CaloriData(
    title: 'Fast Food',
    image: 'assets/images/fastfood.png',
    food1: 'Pizza',
    food2: 'Burger',
    food3: 'French Fries',
    image1: 'assets/images/pizza.png',
    image2: 'assets/images/burger.png',
    image3: 'assets/images/kentang.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),

  //Fruit
  CaloriData(
    title: 'Fruit',
    image: 'assets/images/fruit.png',
    food1: 'Avocado',
    food2: 'Orange',
    food3: 'Apple',
    image1: 'assets/images/alpukat.png',
    image2: 'assets/images/jeruk.png',
    image3: 'assets/images/apel.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),

  //Vegetable
  CaloriData(
    title: 'Vegetable',
    image: 'assets/images/vegetable.png',
    food1: 'Letuce',
    food2: 'Tomato',
    food3: 'Broccoli',
    image1: 'assets/images/selada.png',
    image2: 'assets/images/tomato.png',
    image3: 'assets/images/brokoli.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),

  //Bread
  CaloriData(
    title: 'Bread',
    image: 'assets/images/bread.png',
    food1: 'Croissant',
    food2: 'White Bread',
    food3: 'Baguette',
    image1: 'assets/images/croissant.png',
    image2: 'assets/images/rtawar.png',
    image3: 'assets/images/baguette.png',
    kal1: '200 Cal',
    kal2: '200 Cal',
    kal3: '200 Cal',
  ),
  
];