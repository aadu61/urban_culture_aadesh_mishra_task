import 'package:intl/intl.dart';

class GraphModelData {
  GraphModelData(this.title, this.chartData);

  final String title;
  final List<ChartData>? chartData;

  @override
  String toString() {
    return '\nGraphModelData{title: $title, data = $chartData';
  }
}
class ChartDataModel {
  ChartDataModel(this.x, this.y);

  final String x;
  final double? y;

}

class ChartData {
  ChartData(this.x, this.y);

  final DateTime x;
  final double? y;

  @override
  String toString() {
    return 'chartDate: ${DateFormat("dd-MM-yyyy").format(x)}, chartValue: $y}';
  }
}