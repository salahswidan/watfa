import 'package:flutter/material.dart';

import '../widget/social_circle_avatar.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialCircleAvatar(
            icon: 'assets/svgs/face_book.svg',
          ),
          SocialCircleAvatar(
            icon: 'assets/svgs/google.svg',
          ),
          SocialCircleAvatar(
            icon: 'assets/svgs/apple.svg',
          ),
        ],
      ),
    );
  }
}
