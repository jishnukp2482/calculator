import 'package:calculator/presentation/manager/utlities/button_Modal.dart';
import 'package:get/get.dart';

class CalcController extends GetxController {
  final calcButtonList = <ButtonModal>[
    ButtonModal(
      "AC",
      true,
      () {},
    ),
    ButtonModal(
      "( )",
      true,
      () {},
    ),
    ButtonModal(
      "+/-",
      true,
      () {},
    ),
    ButtonModal(
      "÷",
      true,
      () {},
    ),
    ButtonModal(
      "7",
      false,
      () {},
    ),
    ButtonModal(
      "8",
      false,
      () {},
    ),
    ButtonModal(
      "9",
      false,
      () {},
    ),
    ButtonModal(
      "×",
      true,
      () {},
    ),
    ButtonModal(
      "4",
      false,
      () {},
    ),
    ButtonModal(
      "5",
      false,
      () {},
    ),
    ButtonModal(
      "6",
      false,
      () {},
    ),
    ButtonModal(
      "-",
      true,
      () {},
    ),
    ButtonModal(
      "1",
      false,
      () {},
    ),
    ButtonModal(
      "2",
      false,
      () {},
    ),
    ButtonModal(
      "3",
      false,
      () {},
    ),
    ButtonModal(
      "+",
      true,
      () {},
    ),
    ButtonModal(
      "0",
      false,
      () {},
    ),
    ButtonModal(
      ".",
      false,
      () {},
    ),
    ButtonModal(
      "=",
      true,
      () {},
    ),
  ];
}
