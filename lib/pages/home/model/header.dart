import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:projeto_nubank/controllers/controller_home_page.dart';
import 'package:projeto_nubank/util/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          _welCome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: secondaryPurple,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(MdiIcons.accountOutline),
          color: white,
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (ControllerHomePage) {
            return IconButton(
                onPressed: () {
                  ControllerHomePage.showValue();
                },
                icon: Icon(
                  ControllerHomePage.eyeValue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOffOutline,
                  color: Colors.white,
                ));
          },
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(MdiIcons.helpCircleOutline),
          color: white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_add_alt_1_outlined),
          color: white,
        )
      ],
    );
  }

  _welCome() {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        bottom: 20,
      ),
      child: Text(
        "Olá, Usuário",
        style: TextStyle(
          color: white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
