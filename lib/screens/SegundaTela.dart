import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';

// Map<DateTime, List<Event>> _events = {};
DateTime _selectedDay = DateTime.now();

int dia = _selectedDay.day;

String getMonthName(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return '';
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int mes = _selectedDay.month;
    String nomeMes = getMonthName(mes);
    String dia_mes = dia.toString() + ' ' + nomeMes;
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
      ),
      body: Row(
        children: [Text('$dia_mes')],
      ),
    );
  }
}
