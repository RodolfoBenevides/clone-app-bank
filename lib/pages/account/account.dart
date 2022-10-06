import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/controllers/controller_home_page.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountBank(),
          const SizedBox(
            height: 12,
          ),
          _moneybalance(),
        ],
      ),
    );
  }

  _accountBank() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Conta",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _moneybalance() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controller) {
          return Text(controller.balance,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
        });
  }
}
