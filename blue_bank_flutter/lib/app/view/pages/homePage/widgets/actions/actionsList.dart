import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/areaPixPage/areaPixPage.dart';
import 'package:blue_bank_flutter/app/view/pages/shoppingPage/storeItensList.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActionsList extends StatelessWidget {
  const ActionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 7, right: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: contrastColor, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AreaPixPage()));}, 
                      icon: Icon(
                      MdiIcons.cloverOutline, 
                      color: highlightsColor)),
                  ),
                  Text('Área Pix', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: contrastColor, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoreItensList()));},
                      icon: Icon(
                      MdiIcons.store, 
                      color: highlightsColor)),
                  ),
                  Text('Shopping', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}