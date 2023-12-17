import 'package:blue_bank_flutter/app/view/controllers/homePageController.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => __HeaderState();
}

class __HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: primaryBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            _profile(),
            _options(),
          ]),
          const SizedBox(height: 32),
          // _welcome()
        ],
      ),
    );
  }
}

_profile() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), color: secondaryBlue),
      child: IconButton(
        onPressed: () {},
        icon: Icon(MdiIcons.accountOutline, color: highlightsColor),
      ),
    ),
  );
}

_options() {
  return Row(
    children: [
      GetBuilder<HomePageController>(
          init: HomePageController(),
          builder: (homePageController) {
            return IconButton(
                onPressed: () => homePageController.showValue(),
                icon: Icon(
                    homePageController.eyesValue
                        ? MdiIcons.eyeOutline
                        : MdiIcons.eyeOff,
                    color: highlightsColor));
          }),
      IconButton(
          onPressed: () {},
          icon: Icon(MdiIcons.helpCircleOutline, color: highlightsColor)),
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_add, color: highlightsColor)),
    ],
  );
}

_welcome() async {
  var f = FirebaseFirestore.instance;
  var c = f.collection('conta');
  var name = '';
  await c.get().then((QuerySnapshot querySnapshot) {
    name = querySnapshot.docs[0]['nome'] as String;
  });
  return Container(
    margin: const EdgeInsets.only(left: 20, bottom: 20),
    child: Row(
      children: [
        const Text('Olá, ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
