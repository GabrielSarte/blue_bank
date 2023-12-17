import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/accountWidget.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/actions/actionsList.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/creditCardWidget.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/header.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/myCreditCardsWidget.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/notificationsList.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AccountWidget(),
                    ActionsList(),
                    SizedBox(height: 12),
                    MyCreditCardsWidget(),
                    SizedBox(height: 12),
                    NotificationsList(),
                    SizedBox(height: 12),
                    Divider(thickness: 1.10, color: contrastColor),
                    CreditCardWidget(),
                  ],
                )
              ),
            ],
          ),
        ),
      )
      
    );
  }
}