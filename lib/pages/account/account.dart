import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          _accountBank(),
        ],
      ),
    );
  }

  _accountBank() {
    return Row(
      children: const [
        Text("conta",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }
}
