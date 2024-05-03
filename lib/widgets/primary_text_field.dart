import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String label;
  final bool obsecureText;
  final Function()? onChanged;
  final String? Function(String?)? validator;

  const PrimaryTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.label = '',
    required this.obsecureText,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      onChanged: (String value) {
        if (onChanged != null) {
          onChanged!();
        }
      },
      validator: validator,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
