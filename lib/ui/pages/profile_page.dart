import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/profile_card_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img_profile.png")),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Icon(Icons.check_circle,
                            color: greenColor, size: 32)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Shayna Hanna",
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileCardItem(
                  imageUrl: "assets/ic_edit_profile.png",
                  title: "Edit Profile",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit");
                    }
                    ;
                  },
                ),
                ProfileCardItem(
                  imageUrl: "assets/ic_pin.png",
                  title: "My PIN",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit-pin");
                    }
                    ;
                  },
                ),
                const ProfileCardItem(
                  imageUrl: "assets/ic_wallet.png",
                  title: "Wallet Settings",
                ),
                const ProfileCardItem(
                  imageUrl: "assets/ic_my_rewards.png",
                  title: "My Rewards",
                ),
                const ProfileCardItem(
                  imageUrl: "assets/ic_help.png",
                  title: "Help Center",
                ),
                const ProfileCardItem(
                  imageUrl: "assets/ic_logout.png",
                  title: "Log Out",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Report a Problem",
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
