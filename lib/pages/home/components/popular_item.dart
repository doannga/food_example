import 'package:flutter/material.dart';
import 'package:food_delivery_exam/models/food_model.dart';
class PopularItem extends StatelessWidget {
  final FoodModel food;
  const PopularItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
         color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(21),
        boxShadow: const [BoxShadow(
          offset:  Offset(0,12),
          spreadRadius: -15,
          blurRadius: 52,
          color: Color(0xFFF1F5F9),
        )],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(food.image),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.star, color: Color(0xFFFFCA00),),
                    Text('${food.rating}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 0.015,height: 16.4),)
                  ],
                ),
                Text(food.title, style: const TextStyle(fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, fontSize: 16.5, height: 22.56, letterSpacing: 0.005, color: Color(0xFF56585B))),
                Text(food.subTitle, style: const TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 12, height: 16.4, letterSpacing: 0.025, color: Color(0xFFC7C5C5))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${food.price}', style: const TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 18, height: 26.41, letterSpacing: 0.015, color: Color(0xFF56585B)),),
                    IconButton(onPressed: (){}, icon: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/icons/icon_circle.png'),
                        const Icon(Icons.add, color: Colors.white,),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
