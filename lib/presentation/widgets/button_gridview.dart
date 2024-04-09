import 'package:calculator/presentation/manager/utlities/button_Modal.dart';
import 'package:calculator/presentation/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../manager/controller/calc_controller.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final calcController = Get.find<CalcController>();

    return Wrap(
      children: calcController.calcButtonList.map((buttonModal) {
        if (buttonModal.value == "0") {
          return ZeroButton(buttonModal: buttonModal);
        } else {
          return ButtonGridItem(buttonModal: buttonModal);
        }
      }).toList(),
    );
  }
}

class ButtonGridItem extends StatelessWidget {
  const ButtonGridItem({super.key, required this.buttonModal});
  final ButtonModal buttonModal;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(w * 0.01, h * 0.01, w * 0.01, h * 0.01),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: h * 0.08,
          width: w * 0.2,
          decoration: BoxDecoration(
              color: buttonModal.actionButton
                  ? AppColors.buttonActioncolor
                  : AppColors.buttoncolor,
              shape: BoxShape.circle),
          child: Center(
            child: Text(
              buttonModal.value,
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.05),
            ),
          ),
        ),
      ),
    );
  }
}

class ZeroButton extends StatelessWidget {
  const ZeroButton({super.key, required this.buttonModal});
  final ButtonModal buttonModal;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(w * 0.01, h * 0.01, w * 0.01, h * 0.01),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: h * 0.08,
          width: w * 0.4,
          decoration: BoxDecoration(
              color: buttonModal.actionButton
                  ? AppColors.buttonActioncolor
                  : AppColors.buttoncolor,
              borderRadius: BorderRadius.circular(50),
              shape: BoxShape.rectangle),
          child: Center(
            child: Text(
              buttonModal.value,
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.05),
            ),
          ),
        ),
      ),
    );
  }
}
