import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarChartSample3 extends StatefulWidget {
  const BarChartSample3({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {

  int? touchedGroupIndex;

  BarTouchData get barTouchData => BarTouchData(
      enabled: false,
      handleBuiltInTouches: false,
      touchCallback: (event, response) {
        setState(() {
          final groupI = response?.spot?.touchedBarGroupIndex;
          if (event.isInterestedForInteractions && groupI != null) {
            touchedGroupIndex = groupI;
          } else {
            touchedGroupIndex = null;
          }
        });
      });

  Widget getTitles(double value, TitleMeta meta) {

    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,

    );
    String text = switch (value.toInt()) {
      0 => 'Jan',
      1 => 'Feb',
      2 => 'Mar',
      3 => 'Apr',
      4 => 'May',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            interval: 2,
            getTitlesWidget: (value, meta) => Text("${value.toInt()}K", ),
            showTitles: true,
            
            ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups =>
      [1, 2, 3, 4, 5,].asMap().entries.map((entry) {
        int i = entry.key;
        // int value = entry.value;
        return BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              // toY: value.toDouble(),
              toY: 6,
              color: AppColors.primaryColor,
              width: 12.w,
              borderRadius: BorderRadius.only
              (topRight: Radius.circular(8.r), topLeft: Radius.circular(8.r)),
            ),

            BarChartRodData(
              // toY: value.toDouble(),
              toY: 4,
              color: Color(0xff303a6e),
              width: 12.w,
              borderRadius: BorderRadius.only
              (topRight: Radius.circular(8.r), topLeft: Radius.circular(8.r)),
            ),

          ],
        );
      }).toList();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: BarChart(
        duration: Duration(milliseconds: 100),
        curve: Curves.easeOutQuad,
        BarChartData(
          barTouchData: barTouchData,
          titlesData: titlesData,
          borderData: borderData,
          barGroups: barGroups,
          gridData: const FlGridData(show: true, drawHorizontalLine: true,
          
          horizontalInterval: 1,

          ),
          alignment: BarChartAlignment.spaceAround,
          maxY: 8,
        ),
      ),
    );
  }
}