import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/myCardsPage/functions/newVirtualCardFunction.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class VirtualCardWidget extends StatelessWidget {
  const VirtualCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          _virtualCard(),
          SizedBox(height: 20),
          _newVirtualCard(),
        ],
      ),
    );
  }

  _virtualCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(
        children: [
          Icon(MdiIcons.creditCardOutline, color: highlightsColor),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BlueCard Virtual',
                  style: TextStyle(fontSize: 18, color: highlightsColor)),
              SizedBox(height: 12),
              Text('...6057', style: TextStyle(fontSize: 15, color: halfTonesColor)),
            ],
          ),
        ],
      ),
      Icon(MdiIcons.chevronRight, color: halfTonesColor),
    ]);
  }
  _newVirtualCard() {
    return Column(
      children: [
        Divider(thickness: 1.10, color: contrastColor),
        SizedBox(height: 20),
        Row(
          children: [
            TextButton(
              onPressed: () => NewVirtualCardFunction.newVirtualCardFunction(),
              child: Row(children: [
                Text('+ ',
                    style: TextStyle(fontSize: 25, color: secondaryBlue)),
                Text('Criar cartão virtual',
                    style: TextStyle(fontSize: 18, color: secondaryBlue)),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
