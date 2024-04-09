import 'package:calculator/presentation/themes/app_colors.dart';
import 'package:calculator/presentation/widgets/button_gridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          SizedBox(
            //  color: AppColors.blue,
            height: h * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(w * 0.05, h * 0.05, w * 0.05, h * 0.05),
            child: ButtonGrid(),
          ),
        ],
      ),
    ));
  }
}
