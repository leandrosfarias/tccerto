import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HorizontalDaysList extends StatefulWidget {
  @override
  _HorizontalDaysListState createState() => _HorizontalDaysListState();
}

class _HorizontalDaysListState extends State<HorizontalDaysList> {
  // número inicial de dias exibidos
  int _initialDays = 10;

  // número total de dias
  int _totalDays = 365;

  // número de dias exibidos atualmente
  int _visibleDays = 10;

  // função que atualiza o número de dias exibidos quando a lista é rolada
  void _updateVisibleDays(double position, double extent) {
    int newVisibleDays = (_totalDays * (extent / position)).ceil();
    if (newVisibleDays > _visibleDays) {
      setState(() {
        _visibleDays = newVisibleDays;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _visibleDays,
      itemBuilder: (context, index) {
        int dayNumber = index + 1;
        return Container(
          width: 80,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dia $dayNumber',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Text(
                    '$dayNumber',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      // onNotification: (notification) {
      //   if (notification is ScrollUpdateNotification) {
      //     _updateVisibleDays(
      //         notification.metrics.pixels, notification.metrics.extentInside);
      //   }
      //   return true;
      // },
    );
  }
}
