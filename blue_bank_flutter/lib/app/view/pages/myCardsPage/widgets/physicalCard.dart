import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/myCardsPage/functions/newPhysicalCardFunction.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PhysicalCardWidget extends StatelessWidget {
  const PhysicalCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          _physicalCard(),
          SizedBox(height: 20),
          _newPhysicalCard(),
        ],
      ),
    );
  }

  _physicalCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(
        children: [
          Icon(MdiIcons.creditCard, color: highlightsColor),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BlueCard',
                  style: TextStyle(fontSize: 18, color: highlightsColor)),
              SizedBox(height: 12),
              Text('...0672', style: TextStyle(fontSize: 15, color: halfTonesColor)),
            ],
          ),
        ],
      ),
      Icon(MdiIcons.chevronRight, color: halfTonesColor),
    ]);
  }
  _newPhysicalCard() {
    return Column(
      children: [
        Divider(thickness: 1.10, color: contrastColor),
        SizedBox(height: 20),
        Row(children: [
          TextButton(
              onPressed: () => NewPhysicalCardFunction.newPhysicalCardFunction(),
              child: Row(children: [
                Text('+ ',
                    style: TextStyle(fontSize: 25, color: secondaryBlue)),
                Text('Pedir cartão adicional',
                    style: TextStyle(fontSize: 18, color: secondaryBlue)),
              ]),
            ),
        ]),
      ],
    );
  }
}
