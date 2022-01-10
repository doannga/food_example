import 'package:flutter/material.dart';
import 'package:food_delivery_exam/custom_widgets/custom_button.dart';
class DetailBill extends StatelessWidget {


  const DetailBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shippingCost = 2.05;
    double subTotal = 33.95;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [BoxShadow(
          offset:  Offset(0,12),
          spreadRadius: -15,
          blurRadius: 52,
          color: Color(0xFFF1F5F9),
        )],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 39, bottom: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Shipping Cost', style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.005, color: Color(0xFF56585B)),),
                Text('\$$shippingCost', style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.005, color: Color(0xFF56585B)),)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('SubTotal', style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.005, color: Color(0xFF56585B)),),
                Text('\$$subTotal', style: TextStyle(fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.005, color: Color(0xFF56585B)),)
              ],),
            Image.asset('assets/images/Line1.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Total', style: TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.015, color: Color(0xFF56585B)),),
                Text('\$${shippingCost+subTotal}', style: TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 18, height: 24.61, letterSpacing: 0.015, color: Color(0xFF56585B)),)
              ],
            ),
            CustomButton(text: const Text('Payment'), backgroundColor: const Color(0xFFFFC445), radius: 18, colorShadow: const Color.fromRGBO(255, 196, 69, 0.44), offset: const Offset(0,4), spreadRadius: -10, blurRadius: 32, onPressed: (){}),
          ],
        ),
      )
    );
  }
}
