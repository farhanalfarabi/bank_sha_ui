import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Up"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                "assets/img_wallet.png",
                width: 80,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2208 1996",
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                  Text(
                    "Angga Risky",
                    style: greyTextStyle.copyWith(fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Select Bank",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          BankItem(
              image: "assets/img_bank_bca.png",
              title: "BANK BCA",
              isSelected: true),
          BankItem(image: "assets/img_bank_bni.png", title: "Bank BNI"),
          BankItem(image: "assets/img_bank_mandiri.png", title: "Bank Mandiri"),
          BankItem(image: "assets/img_bank_ocbc.png", title: "Bank OCBC"),
          CustomFilldeButton(
              title: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, '/amount');
              }),
        ],
      ),
    );
  }
}
