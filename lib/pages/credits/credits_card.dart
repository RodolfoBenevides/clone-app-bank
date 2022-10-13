import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/util/colors.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration(
        color: graynu,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(MdiIcons.creditCard),
          SizedBox(width: 10),
          Text(
            "Meus Cartões",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
