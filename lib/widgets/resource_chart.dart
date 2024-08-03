import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../generated/l10n.dart';
import '../models/feature/log/kancolle_log.dart';

class ResourceChart extends StatefulWidget {
  const ResourceChart({super.key, required this.data});

  final List<KancolleResourceLogEntity> data;

  @override
  ResourceChartState createState() => ResourceChartState();
}

class ResourceChartState extends State<ResourceChart> {
  bool enableSma = false;
  bool enableEma = false;
  bool enableWma = false;
  bool enableTma = false;
  TrackballBehavior? _trackballBehavior;
  ZoomPanBehavior? _zoomPanBehavior;
  late DateTime _startDate;
  late DateTime _endDate;
  late int period;
  @override
  void initState() {
    super.initState();
    period = 14;
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
      hideDelay: 1000,
    );
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      // enableSelectionZooming: true,
      // selectionRectBorderColor: Colors.red,
      // selectionRectBorderWidth: 1,
      // selectionRectColor: Colors.grey,
      zoomMode: ZoomMode.xy,
      enablePanning: true,
      enableMouseWheelZooming: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint(widget.data.length.toString());
    _startDate = widget.data.first.time;
    _endDate = widget.data.last.time;
    String name = resourceNameMap[widget.data.first.resource]!;

    if (period < 1) {
      period = 1;
    } else if (period > 50) {
      period = 50;
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(name),
        trailing: PullDownButton(
          rootNavigator: true,
          itemBuilder: (BuildContext context) {
            return [
              PullDownMenuItem.selectable(
                title: 'SMA',
                selected: enableSma,
                onTap: () {
                  setState(() {
                    enableSma = !enableSma;
                  });
                },
              ),
              PullDownMenuItem.selectable(
                title: 'EMA',
                selected: enableEma,
                onTap: () {
                  setState(() {
                    enableEma = !enableEma;
                  });
                },
              ),
              PullDownMenuItem.selectable(
                title: 'WMA',
                selected: enableWma,
                onTap: () {
                  setState(() {
                    enableWma = !enableWma;
                  });
                },
              ),
              PullDownMenuItem.selectable(
                title: 'TMA',
                selected: enableTma,
                onTap: () {
                  setState(() {
                    enableTma = !enableTma;
                  });
                },
              ),
              PullDownMenuTitle(title: Text(S.of(context).TextMovingAveragePeriod)),
              PullDownMenuActionsRow.medium(
                items: [
                  PullDownMenuItem(
                    onTap: () {
                      setState(() {
                        period -= 1;
                      });
                    },
                    title: 'Minus',
                    icon: CupertinoIcons.minus,
                    tapHandler: (context, tap) {
                      tap!();
                    },
                  ),
                  PullDownMenuItem(
                    onTap: () {
                      setState(() {
                        period += 1;
                      });
                    },
                    title: 'Add',
                    icon: CupertinoIcons.add,
                    tapHandler: (context, tap) {
                      tap!();
                    },
                  ),
                ],
              ),
            ];
          },
          buttonBuilder:
              (BuildContext context, Future<void> Function() showMenu) {
            return CupertinoButton(
              onPressed: showMenu,
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.ellipsis),
            );
          },
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            SfCartesianChart(
                plotAreaBorderWidth: 0,
                legend: Legend(isVisible: true),
                primaryXAxis: DateTimeAxis(
                  majorGridLines: const MajorGridLines(width: 0),
                  // dateFormat: DateFormat.Md(),
                  interval: 1,
                  minimum: _startDate.subtract(const Duration(days: 1)),
                  maximum: _endDate.add(const Duration(days: 1)),
                ),
                primaryYAxis: NumericAxis(
                  axisLine: const AxisLine(width: 0),
                  rangePadding: ChartRangePadding.round,
                  // anchorRangeToVisiblePoints: false
                  numberFormat:
                      NumberFormat.simpleCurrency(name: "", decimalDigits: 0),
                ),
                trackballBehavior: _trackballBehavior,
                zoomPanBehavior: _zoomPanBehavior,
                indicators: <TechnicalIndicator<KancolleResourceLogEntity,
                    DateTime>>[
                  if (enableSma)
                    SmaIndicator<KancolleResourceLogEntity, DateTime>(
                      seriesName: name,
                      period: period,
                      signalLineColor: Colors.yellow,
                    ),
                  if (enableWma)
                    WmaIndicator<KancolleResourceLogEntity, DateTime>(
                      seriesName: name,
                      period: period,
                      signalLineColor: Colors.blue,
                    ),
                  if (enableEma)
                    EmaIndicator<KancolleResourceLogEntity, DateTime>(
                      seriesName: name,
                      period: period,
                      signalLineColor: Colors.orange,
                    ),
                  if (enableTma)
                    TmaIndicator<KancolleResourceLogEntity, DateTime>(
                      seriesName: name,
                      period: period,
                      signalLineColor: Colors.teal,
                    )
                ],
                series: <CartesianSeries<KancolleResourceLogEntity, DateTime>>[
                  CandleSeries<KancolleResourceLogEntity, DateTime>(
                    dataSource: widget.data,
                    xValueMapper: (KancolleResourceLogEntity data, _) =>
                        data.time,
                    highValueMapper: (KancolleResourceLogEntity data, _) =>
                        data.high,
                    lowValueMapper: (KancolleResourceLogEntity data, _) =>
                        data.low,
                    openValueMapper: (KancolleResourceLogEntity data, _) =>
                        data.open,
                    closeValueMapper: (KancolleResourceLogEntity data, _) =>
                        data.close,
                    name: name,
                    opacity: 0.7,
                    isVisibleInLegend: false,
                  )
                ]),
            if (enableSma || enableEma || enableWma || enableTma) Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${S.of(context).TextMovingAveragePeriod}: $period"),
            ),
          ],
        ),
      ),
    );
  }
}
