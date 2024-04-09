import 'package:calculator/presentation/manager/bindings/calc_controller_binding.dart';
import 'package:calculator/presentation/pages/calc_page.dart';
import 'package:calculator/presentation/routes/app_pages.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
        name: AppPages.calcPage,
        page: () => CalcPage(),
        binding: CalcControllerBinding()),
  ];
}
