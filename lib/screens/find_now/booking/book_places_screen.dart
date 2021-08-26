import 'package:flutter/material.dart';
import 'package:touristers_demo/screens/find_now/widgets/guest_widget.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookPlacesScreen extends StatefulWidget {
  @override
  _BookPlacesScreenState createState() => _BookPlacesScreenState();
}

class _BookPlacesScreenState extends State<BookPlacesScreen> {
  String? _dateCount;
  String? _range;
  int? _rangeValue = 0;

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
        if (dateRange.value.endDate != null)
          _rangeValue = dateRange.value.endDate.difference(dateRange.value.startDate).inDays + 1;
      } else if (dateRange.value is DateTime) {
      } else if (dateRange.value is List<DateTime>) {
        _dateCount = dateRange.value.length.toString();
      }
      print(_range);
      print(_rangeValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Screen',
        ),
      ),
      body: ListView(
        children: [
          Container(
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
          ),
          Text('Rooms are available'),
          GuestWidget(),
          SizedBox(
            height: 200,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).secondaryHeaderColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              //color: Colors.yellow,
              child: Center(
                child: Text('Amount:- $_rangeValue'),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.confirmation_num_outlined,
              ),
              onPressed: () {},
              label: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
