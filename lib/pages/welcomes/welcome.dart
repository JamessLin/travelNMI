import 'package:app/pages/homepage.dart';
import 'package:app/pages/welcomes/welcomeRota.dart';
import 'package:app/pages/welcomes/welcomeSaipan.dart';
import 'package:app/pages/welcomes/welcomeTinian.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          WelcomeSaipan(),
        ],
      ),
    );
  }
}
