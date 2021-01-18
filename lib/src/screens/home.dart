import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:jadwal_app/src/model/entry.dart';
import 'package:jadwal_app/src/providers/entry_providers.dart';
import 'package:jadwal_app/src/screens/entry.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    final entryProvider = Provider.of<EntryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwalku'),
      ),
      body: StreamBuilder<List<Entry>>(
          stream: entryProvider.entries,
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    elevation: 4,
                    child: ListTile(
                      hoverColor: Colors.blueAccent,
                      trailing: Icon(Icons.edit,
                          color: Theme.of(context).accentColor),
                      title: Text(snapshot.data[index].entry),
                      subtitle: Text(
                        formatDate(DateTime.parse(snapshot.data[index].date),
                            [MM, ' ', d, ', ', yyyy]),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                EntryScreen(entry: snapshot.data[index])));
                      },
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EntryScreen()));
        },
      ),
    );
  }
}
