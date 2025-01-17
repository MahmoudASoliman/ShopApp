import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hinttext,
    this.onChanged,
    this.suffixIcon,
    this.textInputType,
    this.initialValue,
  });

  final String? hinttext;
  final Function(String)? onChanged;
  final Icon? suffixIcon;
  final TextInputType? textInputType;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: TextFormField(
        initialValue: initialValue,
        keyboardType: textInputType,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          hintText: hinttext,
        ),
      ),
    );
  }
}
