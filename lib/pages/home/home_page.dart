import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_nubank/pages/home/model/header.dart';
import 'package:projeto_nubank/util/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: white,
          child: Column(
            children: const [
              Header(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
