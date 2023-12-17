import 'package:blue_bank_flutter/app/view/controllers/homePageController.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/homePage.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/widgets/actions/actionsList.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width:10),
              IconButton(
                  onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage()));},  
                  icon: Icon(
                    MdiIcons.chevronLeft, 
                    color: highlightsColor)
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                SizedBox(height: 10),
                _balance(),
                SizedBox(height: 50),
                ActionsList(),
                SizedBox(height: 20),
                Divider(thickness: 1.10, color: contrastColor,),
                SizedBox(height: 20),
                _historic(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  _title() {
    return Text(
      'Saldo disponível',
      style: TextStyle(
          fontSize: 18, color: halfTonesColor),
    );
  }

  _balance() {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (controller) {
        return Text(controller.saldo, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: highlightsColor));
      }
    );
  }

  _historic(){
    return Text(
      'Histórico',
      style: TextStyle(
          fontSize: 20, color: highlightsColor),
    );
  }
}