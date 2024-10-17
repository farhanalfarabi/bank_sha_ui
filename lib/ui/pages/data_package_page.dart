import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/data_package_item.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Paket Data"),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Phone Number",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 14,
            ),
            CustomFormField(
              title: "+628xxx",
              isShowTitle: false,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Select Package",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 14,
            ),
            Align(
              child: Wrap(
                spacing: 18,
                runSpacing: 18,
                children: [
                  DataPackageItem(title: "10Gb", amount: formatCurrency(30000)),
                  DataPackageItem(title: "20Gb", amount: formatCurrency(80000)),
                  DataPackageItem(
                    title: "50Gb",
                    amount: formatCurrency(100),
                    isSelected: true ,
                  ),
                  DataPackageItem(title: "100Gb", amount: formatCurrency(100000)),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilldeButton(title: "Continue", onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/package-success', (route) => false);
                }
              }),
          ],
        ));
  }
}
