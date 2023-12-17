import 'package:blue_bank_flutter/app/view/controllers/homePageController.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/accountPage/accountPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountWidget extends StatelessWidget{
  const AccountWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountArrow(context),
          const SizedBox(height:12),
          _moneyAccount(),
        ]
      )
    
    );
  }

  _accountArrow(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Conta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        IconButton(
          onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AccountPage()));}, 
          icon: Icon(
          MdiIcons.chevronRight, 
          color: highlightsColor)),
      ],
    );
  }

  _moneyAccount(){
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (controller) {
        return Text(controller.saldo, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold));
      }
    );
  }
}
