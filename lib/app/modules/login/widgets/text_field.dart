// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isPasswordType;
  final TextEditingController controller;
  late Color borderColor;
  late Color borderFocusColor;

  CustomTextField({
    required this.text,
    required this.icon,
    this.isPasswordType = false,
    required this.controller,
    this.borderColor = Colors.orangeAccent,
    this.borderFocusColor = const Color.fromARGB(255, 142, 121, 114),
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isObscure;

  void initState() {
    super.initState();
    isObscure = widget.isPasswordType;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: isObscure,
      enableSuggestions: !widget.isPasswordType,
      autocorrect: !widget.isPasswordType,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(
          minWidth: 70,
        ),
        prefixIcon: Icon(
          widget.icon,
          color: Colors.black,
        ),
        suffixIcon: widget.isPasswordType
            ? Container(
                constraints: BoxConstraints(minWidth: 50),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  color: isObscure ? Colors.white60 : Colors.white,
                ),
              )
            : null,
        labelText: widget.text,
        labelStyle: TextStyle(color: Colors.white60),
        filled: true,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.borderFocusColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: widget.borderColor),
        ),
      ),
      keyboardType: widget.isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}
