import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kickstart/datasource.dart';


void main() {
  runApp(MaterialApp(
    home: FAQPage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kickstart Flutter"),
      ),
      body: Container(
        child: Text("grocery app-nu kashtappedunnu.. sahayikkanam"),
      ),
    );
  }
}

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(DataSource.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}

