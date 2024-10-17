import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: "");

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == "123123") {
        Navigator.pop(context, true);
      } else {
        ShowCustomSnackbar(
            context, "PIN yang anda masukkan salah. Silakan coba lagi.");
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sha PIN",
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  enabled: false,
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: "*",
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Wrap(
                spacing: 32,
                runSpacing: 20,
                children: [
                  CustomButtonPin(
                    number: "1",
                    onTap: () {
                      addPin("1");
                    },
                  ),
                  CustomButtonPin(
                    number: "2",
                    onTap: () {
                      addPin("2");
                    },
                  ),
                  CustomButtonPin(
                    number: "3",
                    onTap: () {
                      addPin("3");
                    },
                  ),
                  CustomButtonPin(
                    number: "4",
                    onTap: () {
                      addPin("4");
                    },
                  ),
                  CustomButtonPin(
                    number: "5",
                    onTap: () {
                      addPin("5");
                    },
                  ),
                  CustomButtonPin(
                    number: "6",
                    onTap: () {
                      addPin("6");
                    },
                  ),
                  CustomButtonPin(
                    number: "7",
                    onTap: () {
                      addPin("7");
                    },
                  ),
                  CustomButtonPin(
                    number: "8",
                    onTap: () {
                      addPin("8");
                    },
                  ),
                  CustomButtonPin(
                    number: "9",
                    onTap: () {
                      addPin("9");
                    },
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomButtonPin(
                    number: "0",
                    onTap: () {
                      addPin("0");
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
