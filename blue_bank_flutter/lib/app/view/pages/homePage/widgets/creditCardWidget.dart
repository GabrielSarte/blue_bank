import 'package:blue_bank_flutter/app/view/controllers/homePageController.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/CreditCardPage/CreditCardPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCardWidget extends StatelessWidget{
  const CreditCardWidget ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 12, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [
          _top(context),
          _invoice(),
          _limit(),
          _paymentButton(),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  _top(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Cartão de crédito', style: TextStyle(fontSize: 20),),
        IconButton(
          onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreditCardPage()));},
          icon: Icon(MdiIcons.chevronRight, color: highlightsColor)),
      ],
    );
  }

  _invoice(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Fatura atual', style: TextStyle(fontSize: 18),),
        const SizedBox(height: 12,),
        GetBuilder<HomePageController>(
          init: HomePageController(),
          builder: (homePageController) {
            return Text(homePageController.invoice, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold ));
          }
        )
      ],
    );
  }

  _limit(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Limite disponível de ', style: TextStyle(fontSize: 18, color: halfTonesColor),),
            GetBuilder<HomePageController>(
              init: HomePageController(),
              builder: (homePageController) {
                return Text(homePageController.limit, style: TextStyle(fontSize: 18, color: halfTonesColor));
            }
            ),
          ],
        ),
        const SizedBox(height: 6,),
        Row(
          children: [
            Text('Limite adicional para Pix e boletos: ', style: TextStyle(fontSize: 18, color: halfTonesColor),),
            Text('R\$ 500.00', style: TextStyle(fontSize: 18, color: secondaryBlue),),
          ],
        ),
        
      ]
      );
  }
}

_paymentButton(){
  return Container(
          margin: const EdgeInsets.only(left: 10),
          child: TextButton(
            onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(contrastColor)),
            child: Text('Aliviar fatura', style: TextStyle(fontSize: 18, color: highlightsColor)),),
        );
}