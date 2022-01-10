import 'package:flutter/material.dart';
import 'package:food_delivery_exam/models/food_model.dart';
import 'package:food_delivery_exam/pages/home/components/category_list.dart';
import 'components/category_item.dart';
import 'components/polular_list.dart';
import 'components/top_week_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          CategoryList(),
          PopularList(),
          TopWeekItem(food: foodList[0],),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFBFAFF),
      elevation: 0,
      title: const Text(
        'Delic',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF46474B),
            height: 32.93,
            letterSpacing: 0.03,
            fontSize: 22),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/icon_notification.png'))
      ],
      leading: IconButton(
        icon: Image.asset('assets/icons/icon_menu.png'),
        onPressed: () {},
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
      ],
    );
  }
}


