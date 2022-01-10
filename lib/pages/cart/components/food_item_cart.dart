import 'package:flutter/material.dart';
import 'package:food_delivery_exam/models/food_model.dart';
class FoodItemCart extends StatelessWidget {
  final FoodModel food;
  const FoodItemCart({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cntQuantity = 1;
    //Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(422),
        boxShadow: const [BoxShadow(
          offset:  Offset(0,12),
          spreadRadius: -15,
          blurRadius: 52,
          color: Color(0xFFF4F8FB),
        )],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: [
                Image.network(food.image),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(food.subTitle, style: const TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 13.5, height: 18.45, letterSpacing: 0.025, color: Color(0xFFC7C5C5))),
                    Text(food.title, style: const TextStyle(fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontSize: 16.5, height: 22.56, letterSpacing: 0.005, color: Color(0xFF56585B))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${food.price}', style: const TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 18, height: 26.41, letterSpacing: 0.015, color: Color(0xFF56585B)),),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){ cntQuantity--;},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/icons/icon_remove_add.png'),
                          const Icon(Icons.remove, color: Colors.white,)
                        ],
                      ),
                    ),
                    Text('$cntQuantity', style: const TextStyle(fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontSize: 18, height: 24.25, letterSpacing: 0.005, color: Color(0xFF323335)),),
                    InkWell(
                      onTap: (){ cntQuantity++;},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/icons/icon_remove_add.png'),
                          const Icon(Icons.add, color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
