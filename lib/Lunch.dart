class Lunch{
  String day;
  String imageUrl;
  List<String> foods;
  Lunch(
      this.day,
      this.imageUrl,
      this.foods,
      );
  static List<Lunch> schedule =[
    Lunch('Monday', 'zucchini_carrot.jpg',['Zucchini Carrot Breakfast Bread','New York Yogurt Choice','Hot oatmeal','Seasonal Fresh Fruit']),
    Lunch('Tuesday','blueberry_waffles.jpg',[
      'Mini Blueberry Waffles',
      'Fresh Plums'
    ]),
    Lunch('Wednesday','banana_muffins.jpg',[
      'Banana Muffins',
      'Mozzarella Cheese Stick',
      'Fresh Oranges'
    ]),
    Lunch('Thursday','buttermilk_pancake.jpg',[
      'Buttermilk Pancake',
      'Turkey Sausage',
      'Fresh Apples'
    ]),
    Lunch('Friday','assorted_bagels.jpg',[
      'Assorted Fresh Bagels',
      'Cream cheese and Jelly',
      'Fresh Pears'
    ])
  ];
}