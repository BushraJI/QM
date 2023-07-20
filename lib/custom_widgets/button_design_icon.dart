import 'package:flutter/material.dart';

class ButtonDesignWithIcon extends StatelessWidget {
  final String? buttonText;
  final IconData? buttonIcon;
  final VoidCallback? onPressed;

  const ButtonDesignWithIcon({
    Key? key,
    this.buttonText,
    this.buttonIcon,
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Icon(
                    buttonIcon,
                    size: 32.0,
                    color: Colors.white,
                  ),
                ),
                Center(
                  child: Text(
                    buttonText!,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
