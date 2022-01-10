import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPage = 3;
  int _curPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  PageView(
          physics: const ClampingScrollPhysics(),
      controller: _pageController,
      onPageChanged: (int page) {
        setState(() {
          _curPage = page;
        });
      },
      children: [
        buildPage1(),
        buildPage2(),
        buildPage3(),
      ],
    ),
      ),

    );
  }

  Widget buidImage() {
    return Center(
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: SizedBox(
                  height: 250,
                    width: 200,
                    child: Image.asset(
                        'assets/images/OnBoarding_Rectangle42.png')),
                ),
              Positioned(
                child: SizedBox(
                    height: 230,
                    width: 180,
                    child: Image.asset(
                        'assets/images/OnBoarding_Rectangle37.png')),
              )

            ],
          ),
          Positioned(
            child: Image.asset('assets/images/OnBoarding_Vector.png'),
            top: 124,
            left: 30,
          ),
          Positioned(
            child: Image.asset('assets/images/OnBoarding_Vector.png'),
            top: 150,
            right: 20,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPage; i++) {
      if (i == _curPage) {
        list.add(_indicator(true));
      } else {
        list.add(_indicator(false));
      }
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 50),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 28 : 14,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFFC445) : const Color(0xFFDEDFE2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget buidIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildIndicator(),
    );
  }

  Widget buildTextPage1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'Enjoy Your Fave \n Meals in Minutes',
              style: TextStyle(
                color: Color(0xFF46474B),
                fontFamily: 'Poppins',
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                height: 1.552,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'With just few steps your food will be deliver faster ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBFC1C7),
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                height: 1.512,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextPage2() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'Find you perfect \n Place for eat',
              style: TextStyle(
                color: Color(0xFF46474B),
                fontFamily: 'Poppins',
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                height: 1.552,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'With just few steps your food will be deliver faster',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBFC1C7),
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                height: 1.512,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextPage3() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              'Organic & healthy \n food for you',
              style: TextStyle(
                color: Color(0xFF46474B),
                fontFamily: 'Poppins',
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                height: 1.552,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'With just few steps your food will be deliver faster',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBFC1C7),
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                height: 1.512,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtonGetStart() {
    return Container(
      height: 75.0,
      width: 206.0,
      //alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
          color: Color(0xFF323335),
          borderRadius: BorderRadius.all(
            Radius.circular(42.42),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(47, 52, 64, 0.76),
              spreadRadius: -10,
              blurRadius: 42,
              offset: Offset(0, 9),
            ),
          ]),
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: const Text(
            'Get Started',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Poppins',
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              height: 1.367,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPage1() {
    return Column(
      children: [
        buidImage(),
        buidIndicator(),
        buildTextPage1(),
        buildButtonGetStart(),
      ],
    );
  }

  Widget buildPage2() {
    return Column(
      children: [
        buidImage(),
        buidIndicator(),
        buildTextPage2(),
        buildButtonGetStart(),
      ],
    );
  }

  Widget buildPage3() {
    return Column(
      children: [
        buidImage(),
        buidIndicator(),
        buildTextPage3(),
        buildButtonGetStart(),
      ],
    );
  }
}
