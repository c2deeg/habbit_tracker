

import 'package:get/get.dart';

class HomeViewController extends GetxController{

  RxString isSelected="".obs;

  Rx<DateTime> selectedMonth= Rx(DateTime.now());
  Rx<DateTime> selectedDate  = Rx(DateTime.now());

  @override
  void onInit() {
    super.onInit();
  }
  final List<ChartData> chartData = [
    ChartData('00:00', 0, ),
    ChartData('04:00', 0, ),
    ChartData('08:00', 0, ),
    ChartData('12:00', 0, ),
    ChartData('16:00', 18, ),
    ChartData('20:00', 18, ),

  ];
  final List<String> monthName = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];

}

class ChartData{
  ChartData(this.x, this.y1, );
  final String x;
  final double y1;

}