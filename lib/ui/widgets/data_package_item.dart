// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bank_sha/shared/shared_methods.dart';
import 'package:flutter/material.dart';

import 'package:bank_sha/shared/theme.dart';

class DataPackageItem extends StatelessWidget {
  final String title;
  final String amount;
  final bool isSelected;
  const DataPackageItem({
    Key? key,
    required this.title,
    required this.amount,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 171,
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 50),
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
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 32),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            amount,
            style: greyTextStyle.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
