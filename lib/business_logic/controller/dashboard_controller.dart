import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:urban_culture_aadesh_mishra_task/ui/dashboard_screen/pages/routine_pages.dart';
import 'package:urban_culture_aadesh_mishra_task/ui/dashboard_screen/pages/streaks_pages.dart';

import '../model/dailySkinCareModel.dart';
import '../model/graph_models.dart';

class DashBoardController extends GetxController{

  RxInt pageIndex = RxInt(0);

  RxList<Widget> pages = RxList([
    const RoutinePages(),
    const StreaksPages(),
  ]);

  RxList<DailySkinCareModel> dailySkinCareList = RxList([
    DailySkinCareModel(
      title: "Cleanser",
      description: "Cetaphil Gentle Skin Cleanser",
      time: "8:00 PM",
    ),
    DailySkinCareModel(
      title: "Toner",
      description: "Thayers Witch Hazel Toner",
      time: "8:02 PM",
    ),
    DailySkinCareModel(
      title: "Moisturizer",
      description: "Kiehl's Ultra Facial Cream",
      time: "8:04 PM",
    ),
    DailySkinCareModel(
      title: "Sunscreen",
      description: "Supergoop Unseen Sunscreen SPF 40",
      time: "8:06 PM",
    ),
    DailySkinCareModel(
      title: "Lip Balm",
      description: "Glossier Birthday Balm Dotcom",
      time: "8:08 PM",
    )
  ]);


  RxList<GraphModelData> graphData = RxList([
    GraphModelData("1D", [
      ChartData(DateTime(2024, 03, 14), 23),
    ]),
    GraphModelData("1W", [
      ChartData(DateTime(2024, 03, 13), 40),
      // ChartData(DateTime(2024, 03, 12), 50),
      // ChartData(DateTime(2024, 03, 11), 27),
      ChartData(DateTime(2024, 03, 10), 25),
      // ChartData(DateTime(2024, 03, 09), 23),
      // ChartData(DateTime(2024, 03, 08), 23),
    ]),
    GraphModelData("1M", [
      ChartData(DateTime(2024, 03, 07), 20),
      // ChartData(DateTime(2024, 03, 05), 21),
      // ChartData(DateTime(2024, 03, 01), 22),
      // ChartData(DateTime(2024, 02, 27), 12),
      // ChartData(DateTime(2024, 02, 20), 20),
      ChartData(DateTime(2024, 02, 14), 30),
    ]),
    GraphModelData("3M", [
      ChartData(DateTime(2024, 02, 07), 20),
      ChartData(DateTime(2024, 01, 15), 60),
      // ChartData(DateTime(2024, 01, 01), 60),
      // ChartData(DateTime(2023, 12, 27), 53),
      // ChartData(DateTime(2023, 12, 25), 43),
      // ChartData(DateTime(2023, 12, 16), 41),
    ]),
    GraphModelData("1Y", [
      // ChartData(DateTime(2023, 09, 07), 45),
      // ChartData(DateTime(2023, 08, 15), 22),
      // ChartData(DateTime(2023, 07, 01), 10),
      // ChartData(DateTime(2023, 06, 27), 11),
      ChartData(DateTime(2023, 05, 25), 50),
      ChartData(DateTime(2023, 03, 16), 20),
    ]),
  ]);

  RxList<ChartDataModel> chartDataModel = RxList([]);
  RxList<ChartData> chartData = RxList([
    ChartData(DateTime(2013, 03, 13), 35),
    ChartData(DateTime(2013, 06, 23), 16),
    ChartData(DateTime(2013, 09, 23), 45),
    ChartData(DateTime(2013, 10, 02), 19),
    ChartData(DateTime(2014, 06, 03), 09),
    ChartData(DateTime(2014, 12, 11), 13),
    ChartData(DateTime(2015, 06, 21), 34),
    ChartData(DateTime(2016, 05, 20), 27),
    ChartData(DateTime(2024, 01, 01), 40),
    ChartData(DateTime(2024, 01, 30), 12),
    ChartData(DateTime(2024, 02, 12), 20),
    ChartData(DateTime(2024, 02, 22), 54),
    ChartData(DateTime(2024, 03, 11), 33),
    ChartData(DateTime(2024, 03, 12), 12),
    ChartData(DateTime(2024, 03, 13), 40),
    ChartData(DateTime(2024, 03, 14), 23),
  ]);

  @override
  void onInit() async {
    super.onInit();
    setGraphData();
  }

  void setGraphData() {

    for(var element in graphData){
      if(element.title == "1D"){
        getData(element);
      }
      if(element.title == "1W"){
        getData(element);
      }
      if(element.title == "1M"){
        getData(element);
      }
      if(element.title == "3M"){
        getData(element);
      }
      if(element.title == "1Y"){
        getData(element);
      }
    }
  }

  getData(GraphModelData element){
    for(var i = 0 ; i < element.chartData!.length; i ++){
      chartDataModel.add(ChartDataModel(element.title, chartData[i].y));
    }
    return chartDataModel;
  }

}



