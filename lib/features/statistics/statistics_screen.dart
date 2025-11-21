import 'package:finance_ui_flutter/core/styling/app_colors.dart';
import 'package:finance_ui_flutter/core/styling/app_styles.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  Widget _buildFinancialContainer({
    required IconData icon,
    required Color iconColor,
    required String amount,
    required String title,
    required Color containerColor,
  }) {
    return Container(
      width: 158.w,
      height: 140.h,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(icon, size: 24.sp, color: iconColor),
          ),
          const HeightSpace(8),
          Text(
            amount,
            style: AppStyles.black16w500Style.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          const HeightSpace(4),
          Text(title, style: AppStyles.grey12MediumStyle),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => context.pop(),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(
                            color: const Color(0xffE8ECF4),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                    const WidthSpace(20),
                    const Text(
                      "Reload",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Icon(
                        Icons.more_horiz_rounded,
                        size: 24,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                const HeightSpace(24),
                Text(
                  "Jan 28 - May 28, 2025",
                  style: AppStyles.subtitlesStyles.copyWith(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
                const HeightSpace(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Statistics", style: AppStyles.black18BoldStyle),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Monthly",
                            style: AppStyles.black15BoldStyle.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 14.sp,
                            ),
                          ),
                          const WidthSpace(4),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 20.sp,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const HeightSpace(20),
                SizedBox(
                  height: 236.h,
                  width: double.infinity,
                  child: BarChart(
                    BarChartData(
                      titlesData: titlesData,
                      borderData: borderData,
                      barGroups: barGroups,
                      gridData: const FlGridData(show: true),
                      alignment: BarChartAlignment.spaceAround,
                      maxY: 8,
                    ),
                  ),
                ),
                const HeightSpace(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildFinancialContainer(
                      icon: Icons.download_outlined,
                      iconColor: AppColors.primaryColor,
                      amount: "15000 EG",
                      title: "Income",
                      containerColor: AppColors.whiteColor,
                    ),
                    _buildFinancialContainer(
                      icon: Icons.upload_outlined,
                      iconColor: AppColors.incomeColor,
                      amount: "35000 EG",
                      title: "Outcome",
                      containerColor: AppColors.whiteColor,
                    ),
                  ],
                ),
                const HeightSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 20,
        interval: 1,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        interval: 2,
        reservedSize: 28,
        getTitlesWidget: (value, meta) => Text(
          "${value.toInt()}k",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  List<BarChartGroupData> get barGroups => [
    for (int i = 0; i < 5; i++)
      BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: 7,
            color: AppColors.primaryColor,
            width: 12.w,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              topLeft: Radius.circular(8.r),
            ),
          ),
          BarChartRodData(
            toY: 5,
            color: AppColors.incomeColor,
            width: 12.w,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              topLeft: Radius.circular(8.r),
            ),
          ),
        ],
      ),
  ];

  FlBorderData get borderData => FlBorderData(show: false);
}
