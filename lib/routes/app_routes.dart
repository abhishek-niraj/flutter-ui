import 'package:flutter/material.dart';
import 'package:abhishek_s_application3/presentation/baseline_reporting_screen/baseline_reporting_screen.dart';
import 'package:abhishek_s_application3/presentation/ad_hoc_reporting_screen/ad_hoc_reporting_screen.dart';
import 'package:abhishek_s_application3/presentation/demo_account_screen/demo_account_screen.dart';
import 'package:abhishek_s_application3/presentation/express_delivery_screen/express_delivery_screen.dart';
import 'package:abhishek_s_application3/presentation/graphical_charts_screen/graphical_charts_screen.dart';
import 'package:abhishek_s_application3/presentation/inventory_trend_analysis_screen/inventory_trend_analysis_screen.dart';
import 'package:abhishek_s_application3/presentation/sales_reporting_screen/sales_reporting_screen.dart';
import 'package:abhishek_s_application3/presentation/performance_tracker_screen/performance_tracker_screen.dart';
import 'package:abhishek_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String baselineReportingScreen = '/baseline_reporting_screen';

  static const String adHocReportingScreen = '/ad_hoc_reporting_screen';

  static const String demoAccountScreen = '/demo_account_screen';

  static const String expressDeliveryScreen = '/express_delivery_screen';

  static const String graphicalChartsScreen = '/graphical_charts_screen';

  static const String inventoryTrendAnalysisScreen =
      '/inventory_trend_analysis_screen';

  static const String salesReportingScreen = '/sales_reporting_screen';

  static const String performanceTrackerScreen = '/performance_tracker_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        baselineReportingScreen: BaselineReportingScreen.builder,
        adHocReportingScreen: AdHocReportingScreen.builder,
        demoAccountScreen: DemoAccountScreen.builder,
        expressDeliveryScreen: ExpressDeliveryScreen.builder,
        graphicalChartsScreen: GraphicalChartsScreen.builder,
        inventoryTrendAnalysisScreen: InventoryTrendAnalysisScreen.builder,
        salesReportingScreen: SalesReportingScreen.builder,
        performanceTrackerScreen: PerformanceTrackerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: BaselineReportingScreen.builder
      };
}
