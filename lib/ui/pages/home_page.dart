import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/home_card_list.dart';
import 'package:bank_sha/ui/widgets/home_latest_transaction_item.dart';
import 'package:bank_sha/ui/widgets/home_services_item.dart';
import 'package:bank_sha/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: whiteColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                color: blueColor,
                width: 20,
              ),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: "Reward",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        child: Image.asset(
          "assets/ic_plus_circle.png",
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildService(context),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy,",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "shaynahan",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img_profile.png")),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child:
                        Icon(Icons.check_circle, color: greenColor, size: 18)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          image: AssetImage("assets/img_bg_card.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shayna Hanna",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            "**** **** **** 4556",
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 5),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Balance",
            style: whiteTextStyle,
          ),
          Text(
            formatCurrency(12500),
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Level 1",
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                "55% ",
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                "of ${formatCurrency(20000)}",
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              color: greenColor,
              minHeight: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildService(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServicesItem(
                iconUrl: "assets/ic_topup.png",
                title: "TopUp",
                onTap: () => Navigator.pushNamed(context, '/topup'),
              ),
              HomeServicesItem(
                iconUrl: "assets/ic_send.png",
                title: "Send",
                onTap: () {
                  Navigator.pushNamed(context, '/send');
                },
              ),
              HomeServicesItem(
                iconUrl: "assets/ic_withdraw.png",
                title: "Withdraw",
              ),
              HomeServicesItem(
                iconUrl: "assets/ic_more.png",
                title: "More",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => MoreDialog(),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child:  Column(
              children: [
                HomeLatestTransactionItem(
                  iconUrl: "assets/ic_transaction_cat1.png",
                  title: "Top Up",
                  time: "Yesterday",
                  value: "+ ${formatCurrency(450000, symbol: "")}",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/ic_transaction_cat2.png",
                  title: "Cashback",
                  time: "Sep 11",
                  value: "+ ${formatCurrency(22000, symbol: "")}",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/ic_transaction_cat3.png",
                  title: "Withdraw",
                  time: "Sep 2",
                  value: "+ ${formatCurrency(50000, symbol: "")}",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/ic_transaction_cat4.png",
                  title: "Transfer",
                  time: "Aug 27",
                  value: "+ ${formatCurrency(123000, symbol: "")}",
                ),
                HomeLatestTransactionItem(
                  iconUrl: "assets/ic_transaction_cat5.png",
                  title: "Electric",
                  time: "Feb 18",
                  value: "+ ${formatCurrency(12300000, symbol: "")}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: "assets/img_friend1.png",
                  name: "yuanita",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend2.png",
                  name: "jani",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend3.png",
                  name: "urip ",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend4.png",
                  name: "masa",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const Wrap(
            spacing: 2,
            runSpacing: 18,
            children: [
              Home_Card_List(
                imageUrl: "assets/img_tips1.png",
                title: "Best tips for using a credit card",
                url: "https://www.google.co.id/",
              ),
              Home_Card_List(
                imageUrl: "assets/img_tips2.png",
                title: "Spot the good pie of finance model",
                url: "https://www.youtube.com/",
              ),
              Home_Card_List(
                imageUrl: "assets/img_tips3.png",
                title: "Great hack to get better advices",
                url: "https://www.youtube.com/",
              ),
              Home_Card_List(
                imageUrl: "assets/img_tips4.png",
                title: "Save more penny buy this instead",
                url: "https://www.youtube.com/",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: EdgeInsets.all(30),
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          children: [
            Text(
              "Do More With Us",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 29,
              children: [
                HomeServicesItem(
                  iconUrl: "assets/ic_product_data.png",
                  title: "Data",
                  onTap: () => Navigator.pushNamed(context, '/beli-data'),
                ),
                HomeServicesItem(
                  iconUrl: "assets/ic_product_water.png",
                  title: "Water",
                ),
                HomeServicesItem(
                  iconUrl: "assets/ic_product_stream.png",
                  title: "Stream",
                ),
                HomeServicesItem(
                  iconUrl: "assets/ic_product_movie.png",
                  title: "Movie",
                ),
                HomeServicesItem(
                  iconUrl: "assets/ic_product_food.png",
                  title: "Food",
                ),
                HomeServicesItem(
                  iconUrl: "assets/ic_product_travel.png",
                  title: "Travel",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
