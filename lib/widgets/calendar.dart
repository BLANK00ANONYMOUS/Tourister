import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String? _dateCount;
  String? _range;

  @override
  void initState() {
    _dateCount = '';
    _range = '';
    super.initState();
  }


  void _onSelectionChanged(DateRangePickerSelectionChangedArgs dateRange) {
    setState(() {
      if (dateRange.value is PickerDateRange) {
        _range = DateFormat('dd/MM/yyyy')
                .format(dateRange.value.startDate)
                .toString() +
            ' - ' +
            DateFormat('dd/MM/yyyy')
                .format(dateRange.value.endDate ?? dateRange.value.startDate)
                .toString();
      } else if (dateRange.value is DateTime) {
      } else if (dateRange.value is List<DateTime>) {
        _dateCount = dateRange.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SfDateRangePicker(
          onSelectionChanged: _onSelectionChanged,
          selectionMode: DateRangePickerSelectionMode.range,
          initialSelectedRange: PickerDateRange(
              DateTime.now().subtract(const Duration(days: 4)),
              DateTime.now().add(const Duration(days: 3))),
        ),
      ),
    );
  }
}
