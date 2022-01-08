import 'package:flutter/material.dart';
import 'package:food_delivery_exam/models/food_model.dart';

import '../../styles.dart';

class FoodDetailScreen extends StatefulWidget {
  final FoodModel food;
  const FoodDetailScreen({Key? key, required this.food}) : super(key: key);

  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  FoodModel get food => widget.food;
  int cntQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            buildAppBar(),
            buildDescription(),
            buildBottomBar(),
          ],
        ),
      )
    );
  }
  Widget buildAppBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        IconButton(onPressed: ()  {}, icon: const Icon(Icons.arrow_back),),
        const Text('Food Detail',style: mTextAppBarStyle),
        IconButton(onPressed: ()  {}, icon: const Icon(Icons.more_horiz),),
      ],
    );
  }
  Widget buildImage(){
    return SizedBox(
      height: 280,
      child: Image.network(food.image),
    );
  }
  Widget buildDescription(){
    return SingleChildScrollView(
      child: Column(
        children: [
          buildImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    food.title,
                    style: mTextTitleStyle,
                  ),
                  Text(
                    food.subTitle,
                    style: mSubTitleStyle,
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFC445),
                  borderRadius: BorderRadius.circular(242),
                  boxShadow: const [BoxShadow(
                    blurRadius: 24,
                    offset: Offset(0,6),
                    spreadRadius: -5,
                    color: Color.fromRGBO(255, 221, 148, 0.85),
                  ),]
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){cntQuantity == 0? 0: cntQuantity--;},
                        icon: const Icon(Icons.remove)),
                    Text('$cntQuantity'),
                    IconButton(
                        onPressed: (){cntQuantity == food.quantity? food.quantity: cntQuantity++;},
                        icon: const Icon(Icons.add)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xFFFFCA00),),
                  Text('${food.rating} Rating', style: mRateReviewStyle,)
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.chat, color: Color(0xFFA6A6A6),),
                  Text( food.cntReviewer == 1 ?'${food.cntReviewer} Review': '${food.cntReviewer} Reviews', style: mRateReviewStyle,)
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(food.description, style: mDescriptionStyle,),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildDeliveryKlo(1),
              buildDeliveryKlo(2),
            ],
          ),
        ],
      ),
    );
  }
  Widget buildDeliveryKlo(int type){
    return Container(
      height: 65,
      decoration: BoxDecoration(
          color: const Color(0xFFFFC445),
          borderRadius: BorderRadius.circular(242),
          boxShadow: const [BoxShadow(
            blurRadius: 52,
            offset: Offset(0,12),
            spreadRadius: -15,
            color: Color(0xFFE5E6E7),
          ),]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          type == 1 ? Image.asset('assets/icons/stopwatch2.png'): Image.asset('assets/icons/fire1.png'),
          const SizedBox(width: 10,),
          Column(
            children: [
              Text(type == 1? food.timeDelivery : food.calories, style: mTimeCaloStyle,),
              Text(type == 1? 'Delivery': 'Calories', style: mSubTimeCaloStyle,)
            ],
          ),
        ],
      ),
    );
  }
  Widget buildBottomBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Total Price', style: mTotalPriceDetail,),
            Text('${food.price*cntQuantity}', style: mPriceDetail,)
          ],
        ),
        Container(
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 42,
                offset: Offset(0,4),
                spreadRadius: -10,
                color: Color.fromRGBO(19, 23, 32, 0.76),
              ),]
          ),
          child: ElevatedButton(
            onPressed: (){},
            child: const Text('Add To Cart', style: mAddToCardStyle,),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(42),
                      side: const BorderSide(color: Color(0xFF323335)),
                    )
                )
            ),
          ),
        )
      ],
    );
  }
}
