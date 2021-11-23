
class Food {
  late String image, title,descrip;
  late int id;
  Food(String imagee, String titlee, int idd,String description){
    image = imagee;
    title = titlee;
    id = idd;
    descrip = description;
  }
}

List<Food> listFood = [
  Food('assets/img/food_01.png', 'Veggie tomato mix', 100 ,'Delivery info \nDelivered between monday aug a'),
  Food('assets/img/food_2.png', 'Spicy fish sauce', 2,'Delivery info \nDelivered between monday aug thurs'),
  Food('assets/img/food_3.png', 'Beef Burger', 3,'Delivery info \nDelivered between wednes aug thurs'),
  Food('assets/img/food_4.png', 'Nem cuốn Nha Trang', 4, 'Delivery info \nDelivered between friday aug thurs'),
  Food('assets/img/food_01.png', 'Veggie tomato mix', 5, 'Delivery info \nDelivered between friday aug sat'),
  Food('assets/img/food_2.png', 'Sushi', 6,  'Delivery info \nDelivered between sun aug sat'),
];