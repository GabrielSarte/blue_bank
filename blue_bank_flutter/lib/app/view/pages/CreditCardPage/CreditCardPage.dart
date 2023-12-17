import 'package:blue_bank_flutter/app/view/controllers/homePageController.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCardPage extends StatelessWidget {
  const CreditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width:10),
                IconButton(
                    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()));}, 
                    icon: Icon(
                      MdiIcons.chevronLeft, 
                      color: highlightsColor)
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 12, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _top(),
                  SizedBox(height: 12),
                  _invoice(),
                  SizedBox(height: 12),
                  _limit(),
                  SizedBox(height: 12),
                  _date(),
                  SizedBox(height: 20),
                  _paymentButton(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _top(){
    return Text('Fatura atual', style: TextStyle(fontSize: 16, color: halfTonesColor),);  
  }

  _invoice(){
    return GetBuilder<HomePageController>(
          init: HomePageController(),
          builder: (homePageController) {
            return Text(homePageController.invoice, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: highlightsColor ));
          }
        );
  }

  _limit(){
    return Row(
          children: [
            Text('Limite disponível de ', style: TextStyle(fontSize: 16, color: halfTonesColor),),
            GetBuilder<HomePageController>(
              init: HomePageController(),
              builder: (homePageController) {
                return Text(homePageController.limit, style: TextStyle(fontSize: 16, color: halfTonesColor));
            }
            ),
          ],
    );
  }

_date(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Fecha em 25 DEZ', style: TextStyle(fontSize: 16, color: halfTonesColor),),
      SizedBox(height: 12),
      Text('A fatura nem fechou e já pesou?\nParcele parte do valor e alivie a fatura.', style: TextStyle(fontSize: 18, color: halfTonesColor),)
    ]
  );
}

_paymentButton(){
  return Container(
          margin: const EdgeInsets.only(left: 10),
          child: TextButton(
            onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(contrastColor)),
            child: Text('Aliviar fatura', style: TextStyle(fontSize: 16, color: highlightsColor)),),
        );
}

}