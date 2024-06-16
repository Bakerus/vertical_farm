import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_farm/app/core/utils/extensions.dart';
import '../controllers/graphiques_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphiquesView extends GetView<GraphiquesController> {
  const GraphiquesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Graphiques",
                    style: Get.theme.textTheme.titleLarge,
                  ),
                  Icon(
                    Icons.bar_chart,
                    size: 38.0.sp,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100.0.wp,
                    child: SfCartesianChart(
                      title: ChartTitle(
                          text: "Temperature",
                          alignment: ChartAlignment.near,
                          textStyle: Get.theme.textTheme.bodySmall!.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ),
                  ),
        
                                  SizedBox(
                    width: 100.0.wp,
                    child: SfCartesianChart(
                      title: ChartTitle(
                          text: "Humidite",
                          alignment: ChartAlignment.near,
                          textStyle: Get.theme.textTheme.bodySmall!.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
