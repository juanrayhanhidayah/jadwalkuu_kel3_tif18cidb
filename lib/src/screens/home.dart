import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jadwal_app/src/screens/add_item.dart';

import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(8.0),
              child: TableCalendar(
                calendarController: _calendarController,
                weekendDays: [7],
                headerStyle: HeaderStyle(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  headerMargin: const EdgeInsets.only(bottom: 8.0),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  formatButtonDecoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.white),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                calendarStyle: CalendarStyle(),
                builders: CalendarBuilders(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddItem()));
        },
      ),
    );
  }
}
