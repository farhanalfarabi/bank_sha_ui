// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bank_sha/shared/theme.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String userName;
  final bool isVerified;
  const TransferRecentUserItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.userName,
    this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 14),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              Text(
                userName,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Spacer(),
          if (isVerified)
            Row(
              children: [
                Image.asset(
                  "assets/ic_check.png",
                  width: 14,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Verified",
                  style:
                      greenTextStyle.copyWith(fontSize: 11, fontWeight: medium),
                )
              ],
            )
        ],
      ),
    );
  }
}
