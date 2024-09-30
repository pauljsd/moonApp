import 'package:flutter/material.dart';
import 'package:to_the_moon/widgets/custom_dropdown_btn.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleText(),
                _destinationDropDownWidget(),
                _numberOfTraveller(),
              ],
            )),
      ),
    );
  }

  Widget _titleText() {
    return const Text('#TTF MOON',
        style: TextStyle(
          color: Colors.white,
          fontSize: 65,
          fontWeight: FontWeight.w800,
        ));
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButton(
        values: const ['Ibadan', 'Lagos'], width: _deviceWidth);
  }

  Widget _numberOfTraveller() {
    return CustomDropdownButton(
        values: ['1', '2', '3', '4', '5'], width: _deviceWidth * 0.45);
  }

  Widget _astroImage() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/astro_moon.png'),
      )),
    );
  }
}
