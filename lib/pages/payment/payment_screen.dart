
import 'package:flutter/material.dart';
import 'package:food_delivery_exam/components/app_bar_component.dart';
import 'package:food_delivery_exam/components/button_component.dart';
import 'package:food_delivery_exam/custom_widgets/custom_icon_button.dart';
import 'package:food_delivery_exam/models/courier_model.dart';

import '../../styles.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            buildAppBar('Payment'),
          ],
        ),
      ),
    );
  }

  Widget buildBody(){
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(34), right: Radius.circular(34)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const Text('Address', style: mPaymentText,),
          const SizedBox(height: 11,),
          buildAddress('address'),
          const SizedBox(height: 27),
          const Text('Courier', style: mPaymentText,),
          buildCourier(lst_counrier[0]),
          const SizedBox(height: 27),
          buildPromotion(),
          const SizedBox(height: 44),
          const Text('You can cancel the payment at any \n time if a problem occurs.', textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 16, letterSpacing: 0.035, height: 24.11),),
          buildButton('Place Order'),
        ],
      ),
    );
  }
  Widget buildAddress(String address){
    return Container(
      decoration: mDecorationPayment,
      child: Row(
        children: [
          const SizedBox(width: 9,),
          Image.network('https://bizflyportal.mediacdn.vn/thumb_wm/1000,100/bizflyportal/images/goo16124191016150.png'),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                'Home Address:',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.5,
                  fontStyle: FontStyle.normal,
                  height: 21.19,
                  color: Color(0xFF56585B),
                ),
              ),
              Text(address, style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 13,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.03,
                height: 17.58,
                color: Color(0xFFC7C5C5),
              ),),
            ],
          ),
        ],
      ),
    );
  }
  Widget buildCourier(Courier courier){
    return Container(
      decoration: mDecorationPayment,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 15,),
          Text(
            courier.type,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 15.5,
              fontStyle: FontStyle.normal,
              height: 21.19,
              color: Color(0xFF56585B),
            ),
          ),
          Text(
            courier.durationDay,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 13,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.01,
              height: 17.58,
              color: Color(0xFFC7C5C5),
            ),
          ),
          Text(
            '\$${courier.price}',
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 13,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.01,
              height: 17.58,
              color: Color(0xFF46474B),
            ),
          ),
          CustomIconButton(backgroundColor: const Color(0xFFFFC445), icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,), onPressed: (){}, radius: 8.5, offset: const Offset(0,3), blurRadius: 16, spreadRadius: 0)
        ],
      ),
    );
  }
  Widget buildPaymentMethod(){
    return Container();
  }
  Widget buildPromotion(){
    return Container(
      child: Row(
        children: [

        ],
      ),
    );
  }

}
