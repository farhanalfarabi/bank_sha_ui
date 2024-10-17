// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bank_sha/shared/theme.dart';

class TransferResultUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String userName;
  final bool isVerified;
  final bool isSelected;
  const TransferResultUserItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.userName,
    this.isVerified = false,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl)),
              shape: BoxShape.circle,
            ),
            child: isVerified
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Icon(Icons.check_circle,
                            color: greenColor, size: 18)),
                  )
                : null,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            userName,
            style: greyTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
