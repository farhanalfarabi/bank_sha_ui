import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileCardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;

  const ProfileCardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 24,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}
