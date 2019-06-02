import 'package:flutter/material.dart';
import 'package:map_to_class_sample/services/merchant.service.dart';

import 'models/merchant.model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Convert Map json to Object Class',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      );
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  Merchant _data = Merchant();

  initState() {
    super.initState();
    this.fetchData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("merchant_id: " + this._data.merchantId.toString()),
          Text("name: " + this._data.name.toString()),
          Text("isClosed: " + this._data.isClosed.toString()),
          Text("menus count: " +
              (this._data.menus == null ? "_" : this._data.menus.length)
                  .toString()),
        ],
      ),
      appBar: AppBar(title: Text('Convert Map json to Object Class')),
    );
  }

  void fetchData() async {
    var result = await (new MerchantService()).getMerchantAsync();
    this._data = result.result;
    setState(() {});
  }
}
