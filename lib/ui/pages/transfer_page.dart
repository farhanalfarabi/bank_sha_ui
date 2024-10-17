import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Search",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: "By Username",
            isShowTitle: false,
          ),
          SizedBox(
            height: 40,
          ),
          // buildRecentUser(),
          buildResultUser(context),
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Users",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        SizedBox(
          height: 14,
        ),
        TransferRecentUserItem(
          name: "Shayna Hanna",
          imageUrl: "assets/img_profile.png",
          isVerified: true,
          userName: '@shayna_hanna',
        ),
        TransferRecentUserItem(
          name: "John Hi",
          imageUrl: "assets/img_friend3.png",
          isVerified: false,
          userName: '@jhi',
        ),
        TransferRecentUserItem(
          name: "Masayoshi",
          imageUrl: "assets/img_friend4.png",
          isVerified: false,
          userName: '@form',
        ),
      ],
    );
  }

  Widget buildResultUser(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Result",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        SizedBox(
          height: 14,
        ),
        Align(
          child: Wrap(
            runSpacing: 17,
            spacing: 10,
            children: [
              TransferResultUserItem(
                imageUrl: "assets/img_profile.png",
                name: "Yonna Jie",
                userName: "@yonnae",
                isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: "assets/img_profile.png",
                name: "Yonna Jie",
                userName: "@yonnae",
                isVerified: false,
                isSelected: true,
              ),
              TransferResultUserItem(
                imageUrl: "assets/img_profile.png",
                name: "Yonna Jie",
                userName: "@yonnae",
                isVerified: false,
              ),
              TransferResultUserItem(
                imageUrl: "assets/img_profile.png",
                name: "Yonna Jie",
                userName: "@yonnae",
                isVerified: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        CustomFilldeButton(
          title: "Continue",
          onPressed: () {
            Navigator.pushNamed(context, '/transfer-amount');
          },
        )
      ],
    );
  }
}
