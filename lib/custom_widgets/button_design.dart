import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPressed;

  const ButtonDesign({
    Key? key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: (onPressed),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.pink),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Center(
              child: Text(
                buttonText!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
