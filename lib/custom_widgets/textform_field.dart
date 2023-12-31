import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String label_text;
  CustomTextField(this.label_text);

  // CustomTextField(this.label_text, {required TextEditingController controller});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: widget.label_text,
            labelStyle: TextStyle(
                color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 32, 14, 192), width: 2))),
      ),
    );
  }
}
