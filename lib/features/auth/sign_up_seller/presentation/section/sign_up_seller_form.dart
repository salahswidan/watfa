import 'package:flutter/material.dart';
import 'first_sign_up_seller_form.dart';
import 'second_sign_up_seller_form.dart';

class SignUpSellerForm extends StatelessWidget {
  final int currentIndex;

  const SignUpSellerForm({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return currentIndex == 0
        ? const FirstSignUpSellerForm()
        : const SecondSignUpSellerForm();
  }
}
