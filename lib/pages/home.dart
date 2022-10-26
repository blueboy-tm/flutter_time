import 'package:flutter/material.dart';
import 'package:flutter_time/widget/date_widget.dart';
import 'package:flutter_time/time/time.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('ساعت و تاریخ امروز')),
        body: PageOne(),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  final time = DateTimeApi();
  PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${time.h}:${time.M}:${time.S} ${time.a}',
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontFamily: 'Sahel',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          DateBox(
            'خورشیدی',
            '${time.persian.year}/${time.persian.month}/${time.persian.day}'
                '\n${time.persian.wdayStr} - ${time.persian.datetime.day} '
                '${time.persian.monthStr} ${time.persian.year}',
          ),
          DateBox(
            'میلادی',
            '${time.ad.year}/${time.ad.month}/${time.ad.day}'
                '\n${time.ad.wdayStr} - ${time.ad.datetime.day} '
                '${time.ad.monthStr} ${time.ad.year}',
                direction: TextDirection.ltr,

          ),
          DateBox(
            'ترکی',
            '${time.turkish.year}/${time.turkish.month}/${time.turkish.day}'
                '\n${time.turkish.wdayStr} - ${time.turkish.datetime.day} '
                '${time.turkish.monthStr} ${time.turkish.year}',
                direction: TextDirection.ltr,
          ),
          DateBox('برج فلکی ', constellation[int.parse(time.persian.month)]!)
        ],
      ),
    );
  }
}
