import 'package:flutter/material.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../../core/theme/colors.dart';

class CustomAuthButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomAuthButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50,
          width: 1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.19),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorsManagers.voliet,
                  ColorsManagers.purple,
                ]),
          ),
          child: Center(
            child: Text(text,),
          )),
    );
  }
}
