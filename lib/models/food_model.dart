
class FoodModel{
  String title;
  String subTitle;
  int quantity;
  double rating;
  int cntReviewer;
  String description;
  double price;
  String timeDelivery;
  String calories;
  String image;

  FoodModel(
      this.title,
      this.subTitle,
      this.quantity,
      this.rating,
      this.cntReviewer,
      this.description,
      this.price,
      this.timeDelivery,
      this.calories,
      this.image);
}

List<FoodModel> foodList = [
FoodModel('Green Salad', 'Salad With Wijen', 100, 4.5, 100, 'This hearty salad from Nancy Silverton combines crisp iceberg lettuce, milky mozzarella, spicy-tangy peperoncini and salty olives and salami.', 12.5, '12-15 Min', '412 Kcal', "image"),
  FoodModel('Tomato Salad', 'Mozzarella Salad', 100, 4.3, 50, 'This hearty salad from Nancy Silverton combines crisp iceberg lettuce, milky mozzarella, spicy-tangy peperoncini and salty olives and salami.', 11.2, '12-15 Min', '412 Kcal', "image"),
  FoodModel('Meat Salad', 'Meat On Bowl', 100, 4.3, 1210, 'This hearty salad from Nancy Silverton combines crisp iceberg lettuce, milky mozzarella, spicy-tangy peperoncini and salty olives and salami.', 10.25, '12-15 Min', '412 Kcal', "image"),

];