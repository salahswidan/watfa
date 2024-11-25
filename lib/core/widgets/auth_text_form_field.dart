import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';
import '../theme/styles.dart';

class AuthTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? suffixIcon;
  final bool? isPassword;
  final TextInputType? keyboardType;

  const AuthTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.isPassword,
    this.keyboardType,
  });

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextField(
        keyboardType:widget.keyboardType?? TextInputType.text,
        obscuringCharacter: "*",
        obscureText: widget.isPassword ?? false ? isObscured : false,
        controller: widget.controller,
        style: TextStyles.font14Greyw500Poppins(context),
        decoration: InputDecoration(
          
          
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: ColorsManagers.purple,
              )),
          suffixIcon: widget.isPassword ?? false
              ? InkWell(
                  onTap: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/svgs/password_text_field_icon.svg",
                    fit: BoxFit.scaleDown,
                    height: 10,
                    width: 25,
                  ),
                )
              : SvgPicture.asset(
                  widget.suffixIcon!,
                  fit: BoxFit.scaleDown,
                  height: 18,
                  width: 18,
                ),
          hintStyle: TextStyles.font14Greyw500Poppins(context),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
