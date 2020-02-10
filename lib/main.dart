import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controllerRon = TextEditingController();
  TextEditingController controllerUsd = TextEditingController();
  TextEditingController controllerEur = TextEditingController();
  TextEditingController controllerGbp = TextEditingController();
  TextEditingController controllerPln = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convertor Valutar'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                'res/ro.png',
              ),
              title: Text(
                'Romanian Leu',
              ),
              trailing: Container(
                width: 110.0,
                height: 64.0,
                color: Colors.white12,
                margin: EdgeInsets.all(1.0),
                child: TextField(
                  onTap: () {
                    controllerRon.clear();
                    controllerUsd.clear();
                    controllerEur.clear();
                    controllerGbp.clear();
                    controllerPln.clear();
                  },
                  onChanged: (ronValue) {
                    double ronValue = double.parse(controllerRon.text);
                    controllerUsd.text = '${(ronValue / 4.1).toStringAsFixed(2)}';
                    controllerEur.text = '${(ronValue / 4.7).toStringAsFixed(2)}';
                    controllerGbp.text = '${(ronValue / 5.6).toStringAsFixed(2)}';
                    controllerPln.text = '${(ronValue / 1.1).toStringAsFixed(2)}';
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controllerRon.clear();
                      },
                    ),
                  ),
                  controller: controllerRon,
                ),
              ),
              subtitle: Text(
                'RON',
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'res/usa.png',
              ),
              title: Text(
                'American Dollars',
              ),
              subtitle: Text(
                'USD',
              ),
              trailing: Container(
                width: 110.0,
                height: 64.0,
                color: Colors.white12,
                margin: EdgeInsets.all(1.0),
                child: TextField(
                  onTap: () {
                    controllerRon.clear();
                    controllerUsd.clear();
                    controllerEur.clear();
                    controllerGbp.clear();
                    controllerPln.clear();
                  },
                  onChanged: (usdValue) {
                    double usdValue = double.parse(controllerUsd.text);
                    controllerRon.text = '${(usdValue / 0.23).toStringAsFixed(2)}';
                    controllerEur.text = '${(usdValue / 1.1).toStringAsFixed(2)}';
                    controllerGbp.text = '${(usdValue / 1.29).toStringAsFixed(2)}';
                    controllerPln.text = '${(usdValue / 0.26).toStringAsFixed(2)}';
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controllerUsd.clear();
                      },
                    ),
                  ),
                  controller: controllerUsd,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'res/eur.png',
              ),
              title: Text(
                'EURO',
              ),
              subtitle: Text(
                'EUR',
              ),
              trailing: Container(
                width: 110.0,
                height: 64.0,
                color: Colors.white12,
                margin: EdgeInsets.all(1.0),
                child: TextField(
                  onTap: () {
                    controllerRon.clear();
                    controllerUsd.clear();
                    controllerEur.clear();
                    controllerGbp.clear();
                    controllerPln.clear();
                  },
                  onChanged: (eurValue) {
                    double eurValue = double.parse(controllerEur.text);
                    controllerRon.text = '${(eurValue / 0.21).toStringAsFixed(2)}';
                    controllerUsd.text = '${(eurValue / 0.91).toStringAsFixed(2)}';
                    controllerGbp.text = '${(eurValue / 1.18).toStringAsFixed(2)}';
                    controllerPln.text = '${(eurValue / 0.23).toStringAsFixed(2)}';
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controllerEur.clear();
                      },
                    ),
                  ),
                  controller: controllerEur,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'res/uk.png',
              ),
              title: Text(
                'British Pound',
              ),
              subtitle: Text(
                'BGP',
              ),
              trailing: Container(
                width: 110.0,
                height: 64.0,
                color: Colors.white12,
                margin: EdgeInsets.all(1.0),
                child: TextField(
                  onTap: () {
                    controllerRon.clear();
                    controllerUsd.clear();
                    controllerEur.clear();
                    controllerGbp.clear();
                    controllerPln.clear();
                  },
                  onChanged: (gbpValue) {
                    double gbpValue = double.parse(controllerGbp.text);
                    controllerRon.text = '${(gbpValue / 0.18).toStringAsFixed(2)}';
                    controllerUsd.text = '${(gbpValue / 0.78).toStringAsFixed(2)}';
                    controllerEur.text = '${(gbpValue / 0.85).toStringAsFixed(2)}';
                    controllerPln.text = '${(gbpValue / 0.2).toStringAsFixed(2)}';
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controllerGbp.clear();
                      },
                    ),
                  ),
                  controller: controllerGbp,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                'res/pln.png',
              ),
              title: Text(
                'Pollish bullshit',
              ),
              subtitle: Text(
                'PLN',
              ),
              trailing: Container(
                width: 110.0,
                height: 64.0,
                color: Colors.white12,
                margin: EdgeInsets.all(1.0),
                child: TextField(
                  onTap: () {
                    controllerRon.clear();
                    controllerUsd.clear();
                    controllerEur.clear();
                    controllerGbp.clear();
                    controllerPln.clear();
                  },
                  onChanged: (plnValue) {
                    double plnValue = double.parse(controllerPln.text);
                    controllerRon.text = '${(plnValue / 0.9).toStringAsFixed(2)}';
                    controllerUsd.text = '${(plnValue / 3.9).toStringAsFixed(2)}';
                    controllerEur.text = '${(plnValue / 4.27).toStringAsFixed(2)}';
                    controllerGbp.text = '${(plnValue / 5.03).toStringAsFixed(2)}';
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controllerPln.clear();
                      },
                    ),
                  ),
                  controller: controllerPln,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
