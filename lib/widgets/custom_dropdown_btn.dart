import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButton({super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        width: width,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(12), // Rounded edges
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
            style: const TextStyle(color: Colors.white),
            value: values.first,
            items: values.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ));
  }
}
