import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final iconImagePath;
  final buttonText;

  const MyButton({
    required this.iconImagePath,
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Icon
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 50,
                spreadRadius: 2,
              )
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(height: 10),
        //Text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
