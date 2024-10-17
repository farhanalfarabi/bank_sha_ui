import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: "0");

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
        locale: 'id',
        symbol: '',
        decimalDigits: 0,
      ).format(int.parse(text.replaceAll(".", ""))));
    });
  }

  addAmount(String number) {
    if (amountController.text == "0") {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == "") {
          amountController.text = "0";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 54),
        children: [
          SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              "Total Amount",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 72,
          ),
          Align(
            child: IntrinsicWidth(
              child: TextFormField(
                enabled: false,
                controller: amountController,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefix: Text(
                    "Rp. ",
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 58,
          ),
          Wrap(
            spacing: 36,
            runSpacing: 40,
            children: [
              CustomButtonPin(
                number: "1",
                onTap: () {
                  addAmount("1");
                },
              ),
              CustomButtonPin(
                number: "2",
                onTap: () {
                  addAmount("2");
                },
              ),
              CustomButtonPin(
                number: "3",
                onTap: () {
                  addAmount("3");
                },
              ),
              CustomButtonPin(
                number: "4",
                onTap: () {
                  addAmount("4");
                },
              ),
              CustomButtonPin(
                number: "5",
                onTap: () {
                  addAmount("5");
                },
              ),
              CustomButtonPin(
                number: "6",
                onTap: () {
                  addAmount("6");
                },
              ),
              CustomButtonPin(
                number: "7",
                onTap: () {
                  addAmount("7");
                },
              ),
              CustomButtonPin(
                number: "8",
                onTap: () {
                  addAmount("8");
                },
              ),
              CustomButtonPin(
                number: "9",
                onTap: () {
                  addAmount("9");
                },
              ),
              SizedBox(
                height: 60,
                width: 60,
              ),
              CustomButtonPin(
                number: "0",
                onTap: () {
                  addAmount("0");
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back, color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomFilldeButton(
              title: "Continue",
              onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/transfer-success', (route) => false);
                }
              }),
          SizedBox(
            height: 25,
          ),
          CustomTextButton(title: "Terms & Conditions", onPressed: () {}),
        ],
      ),
    );
  }
}
