class PaymentMethod{
  String image;
  String type;
  String number;
  PaymentMethod(this.image, this.type, this.number);
}
List<PaymentMethod> lst_card= [
  PaymentMethod('image', 'Master Card', '12345678999'),
];