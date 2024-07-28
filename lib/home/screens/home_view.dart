import 'package:flutter/material.dart';
import 'package:flutter_music/home/controller/home_view_controller.dart';
import 'package:flutter_music/home/screens/week_chart_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../core/common_ui/CommonClass.dart';
import '../../core/theme/app_theme.dart';
import '../../utils/appText.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Acoustic Guitar",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 20),
          decoration: BoxDecoration(
              color: const Color(0XFFFFCB65),
              borderRadius: BorderRadius.circular(20)),
          child: const Text(
            "S",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
        leadingWidth: 80,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: GetPlatform.isAndroid ? 65 : 100),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0XFF322F37)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                color: Colors.white,
                                size: 18,
                                AssetImage("assets/svg/iv_milestone.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Milestone 9",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "1d Ago",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0XFF7C7C7C),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ImageIcon(
                                color: Colors.white,
                                size: 18,
                                AssetImage("assets/svg/iv_watch.png")),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0XFF7C7C7C),
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/ic_capture.svg",
                                  height: 40.h,
                                  width: 40.w,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'semiBoldFont'),
                                    ),
                                    Text(
                                      "Time Logs",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF7C7C7C),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'regularFont'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 4,
                                ),
                                SvgPicture.asset(
                                  "assets/svg/ic_new_capture.svg",
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "03",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'semiBoldFont'),
                                    ),
                                    Text(
                                      "Captures",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF7C7C7C),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'regularFont'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        CircularPercentIndicator(
                          radius: 45.0,
                          lineWidth: 10.0,
                          percent: 0.8,
                          center: const Text(
                            "245",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'rubikSemiBold'),
                          ),
                          progressColor: AppTheme.yellow,
                          backgroundColor: AppTheme.lightGray,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              controller.isSelected.value == ""
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0XFF322F37)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Milestones",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'mediumFont'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Each milestones awarded equals 1 hour of practice",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'regularFont'),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  ImageIcon(
                                      color: Colors.white,
                                      size: 30,
                                      AssetImage(
                                          "assets/svg/iv_milestone.png")),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    " 1 Milestones",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'regularFont'),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              ImageIcon(
                                  color: Colors.white,
                                  size: 30,
                                  AssetImage("assets/svg/iv_equal.png")),
                              Column(
                                children: [
                                  ImageIcon(
                                      color: Colors.white,
                                      size: 30,
                                      AssetImage("assets/svg/iv_watch.png")),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    " 1 hour",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'regularFont'),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "d";
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.yellow,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 16, right: 16),
                                  height: 50,
                                  width: MediaQuery.sizeOf(context).width - 250,
                                  child: CommonClass.normalText(
                                      text: "Next",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "regularFont",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "d";
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: controller.isSelected.value == "d"
                                          ? Colors.white.withOpacity(0.50)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: AppText(
                                    text: "D",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "w";
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: controller.isSelected.value == "w"
                                          ? Colors.white.withOpacity(0.50)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: AppText(
                                    text: "W",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "m";
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: controller.isSelected.value == "m"
                                          ? Colors.white.withOpacity(0.50)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: AppText(
                                    text: "M",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "y";
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: controller.isSelected.value == "y"
                                          ? Colors.white.withOpacity(0.50)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: AppText(
                                    text: "Y",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.isSelected.value = "in";
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: controller.isSelected.value == "in"
                                          ? Colors.white.withOpacity(0.50)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Icon(
                                    Icons.all_inclusive,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //controller.isSelected.value="in";
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.50),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        controller.isSelected.value == "d"
                            ? Column(
                                children: [
                                  timeStatusView(
                                      title: '0:50',
                                      subTitle: '1:00',
                                      linearProgressValue: 0.5),
                                  timeChartView(),
                                ],
                              )
                            : controller.isSelected.value == "w"
                                ? Column(
                                    children: [
                                      timeStatusView(
                                          title: '0:50',
                                          subTitle: '3:00',
                                          linearProgressValue: 0.5),
                                      WeekChartView(),
                                    ],
                                  )
                                : controller.isSelected.value == "y"
                                    ? Column(
                                        children: [
                                          timeStatusView(
                                              title: '0:50',
                                              subTitle: '200:00',
                                              linearProgressValue: 0.5),
                                          yearCalenderView()
                                        ],
                                      )
                                    : controller.isSelected.value == "in"
                                        ? infiniteDataView()
                                        : const SizedBox()
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  Widget timeChartView() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0XFF322F37)),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CommonClass.normalText(
                    text: "Session",
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "regularFont",
                    fontWeight: FontWeight.w600),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CommonClass.normalText(
                        text: "0 / ",
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "regularFont",
                        fontWeight: FontWeight.w600),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: CommonClass.normalText(
                          text: "1",
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "regularFont",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: SfCartesianChart(
                plotAreaBorderWidth: 0.0,
                plotAreaBorderColor: Colors.transparent,
                plotAreaBackgroundColor: Colors.transparent,
                primaryYAxis: const CategoryAxis(
                  isVisible: false,
                ),
                primaryXAxis: const CategoryAxis(
                    axisLine: AxisLine(color: Colors.transparent, width: 0),
                    interval: 1,
                    labelStyle: TextStyle(color: Colors.white),
                    majorGridLines: MajorGridLines(width: 0)),
                series: <CartesianSeries>[
                  StackedColumnSeries<ChartData, String>(
                      dataSource: controller.chartData,
                      color: Colors.yellow,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y1),
                ]),
          ),
        ],
      ),
    );
  }

  Widget timeStatusView(
      {required String title,
      required String subTitle,
      required double linearProgressValue}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0XFF322F37)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  AppText(
                    text: "Time",
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  AppText(
                    text: "$title / ",
                    color: Colors.white,
                    textSize: 20,
                  ),
                  AppText(
                    text: subTitle,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            value: linearProgressValue,
            minHeight: 15,
            backgroundColor: Colors.grey,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.yellow),
          ),
        ],
      ),
    );
  }

  Widget yearCalenderView() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0XFF322F37)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: "Sessions",
                color: Colors.white,
              ),
              Row(
                children: [
                  AppText(
                    text: "10 / ",
                    color: Colors.white,
                    textSize: 18,
                  ),
                  AppText(
                    text: "168",
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: 200,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 20.0,
                            mainAxisExtent: 50),
                    //padding: const EdgeInsets.all(10.0),
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                  height: 10,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ))),
                              Container(
                                height: 35,
                                width: double.infinity,
                                padding: EdgeInsets.zero,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: index % 2 == 1 ? 0.5 : 0.2,
                                      minHeight: 15,
                                      backgroundColor: Colors.grey,
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                              Colors.yellow),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: AppText(
                                text: controller.monthName[index],
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 190,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                margin: const EdgeInsets.only(left: 15),
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(color: Colors.white),
                )),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: AppText(
                    text: DateTime.now().year.toString(),
                    color: Colors.white,
                    textSize: 18,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget infiniteDataView() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0XFF322F37)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: "Hours Completed",
                color: Colors.white,
              ),
              Row(
                children: [
                  AppText(
                    text: "68 / ",
                    color: Colors.white,
                    textSize: 18,
                  ),
                  AppText(
                    text: "72",
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: 270,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    //padding: const EdgeInsets.all(10.0),
                    itemCount: 68,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(50)),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 270,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                margin: const EdgeInsets.only(left: 15),
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(color: Colors.white),
                )),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: AppText(
                    text: "All Time",
                    color: Colors.white,
                    textSize: 18,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 5,
              ),
              const SizedBox(
                width: 10,
              ),
              AppText(
                text: "1 hour",
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
