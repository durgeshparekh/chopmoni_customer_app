import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final Function(String) validator;
  final TextInputType inputType;
  final int maxLength;
  final Widget? suffixIcon;

  const CustomFormField({
    super.key,
    required this.label,
    required this.validator,
    required this.inputType,
    required this.maxLength,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextFormField(
        keyboardType: inputType,
        maxLength: maxLength,
        buildCounter: (
            context, {
              currentLength = 0,
              isFocused = false,
              maxLength,
            }) {
          return const SizedBox();
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey), // Adjust the border color
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey), // Adjust the border color
          ),// Remove the default border
          contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          suffixIcon: suffixIcon,
        ),
        validator: (value) => validator(value!),
      ),
    );
  }
}
