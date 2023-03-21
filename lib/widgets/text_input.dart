// ignore_for_file: type_init_formals
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController textEditingController;

  const TextInput(
      {Key? key,
      required String this.hintText,
      required bool this.isPassword,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: textEditingController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}
