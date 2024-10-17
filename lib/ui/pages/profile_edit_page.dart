import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ! Us Name Field
                CustomFormField(title: "User Name"),
                const SizedBox(
                  height: 16,
                ),
                // ! Full Name Field
                CustomFormField(title: "Full Name"),
                const SizedBox(
                  height: 16,
                ),
                // ! Email Field
                CustomFormField(title: "Email Address"),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: "Password",
                  obsecureText: true,
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomFilldeButton(
                  title: "Update Now",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/profile-success', (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
