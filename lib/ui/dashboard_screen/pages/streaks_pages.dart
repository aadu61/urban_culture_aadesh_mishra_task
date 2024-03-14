import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:urban_culture_aadesh_mishra_task/business_logic/controller/dashboard_controller.dart';

import '../../../business_logic/model/graph_models.dart';
import '../../../core/export_core.dart';

class StreaksPages extends StatelessWidget {
  const StreaksPages({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: MyColors.colorFCF7FA,
      appBar: AppBar(
        backgroundColor: MyColors.colorFCF7FA,
        surfaceTintColor: MyColors.colorFCF7FA,
        title: Center(
          child: Text(
            AppString.streaks,
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 18.spMin),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: GetX<DashBoardController>(
          init: DashBoardController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSize.verticalSpace(20.sp),

                    ///today goal title
                    Text(
                      "Today's Goal: 3 streak days",
                      style: theme.textTheme.titleLarge,
                    ),

                    ///streak day container
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 16.sp),
                      decoration: BoxDecoration(
                        color: MyColors.colorF2E8EB,
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      padding: EdgeInsets.all(24.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Streak Days",
                            style: theme.textTheme.titleMedium,
                          ),
                          CustomSize.verticalSpace(8.sp),
                          Text(
                            "2",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),

                    ///daily streak graph container
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 24.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily Streak",
                            style: theme.textTheme.titleMedium,
                          ),
                          CustomSize.verticalSpace(8.sp),
                          Text(
                            "2",
                            style: theme.textTheme.titleLarge?.copyWith(fontSize: 32.spMin),
                          ),
                          CustomSize.verticalSpace(8.sp),
                          Row(
                            children: [
                              Text(
                                "Last 30 Days",
                                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400,color: MyColors.color964F66),
                              ),
                              Text(
                                " + 100%",
                                style: theme.textTheme.titleMedium?.copyWith(color: MyColors.color088759),
                              ),
                            ],
                          ),
                          CustomSize.verticalSpace(8.sp),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16.sp),
                            height: 207.2.sp,
                            child: SfCartesianChart(
                              plotAreaBorderWidth: 0,
                              primaryXAxis: CategoryAxis(
                                majorGridLines: const MajorGridLines(width: 0),
                                axisLine: const AxisLine(width: 0),
                                majorTickLines: const MajorTickLines(width: 0),
                                maximumLabels: 5,
                                labelStyle: TextStyle(
                                  color: MyColors.color964F66,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              primaryYAxis: const NumericAxis(
                                isVisible: false,
                              ),
                              series: [
                                SplineAreaSeries<ChartDataModel, String>(
                                    borderColor: MyColors.color964F66,
                                    borderWidth: 2,
                                    splineType: SplineType.cardinal,
                                    cardinalSplineTension: 0.9,
                                    gradient: LinearGradient(colors: [
                                      MyColors.color964F66.withOpacity(0.2),
                                      MyColors.color964F66.withOpacity(0),
                                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                    dataSource: controller.chartDataModel.value,
                                    xValueMapper: (ChartDataModel data, _) => data.x,
                                    yValueMapper: (ChartDataModel data, _) => data.y)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///keep it up text
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 4.sp, bottom: 12.sp),
                      child: Text(
                        "Keep it up! You're on a roll",
                        style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),

                    ///get start container
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 12.sp),
                      decoration: BoxDecoration(
                        color: MyColors.colorF2E8EB,
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 9.5.sp),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
