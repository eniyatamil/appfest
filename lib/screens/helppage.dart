import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Container(
        height: 200,
        child: Column(
          children: [
            Text('Happy to see you use our app,GETLETTER. If you find any difficulties in using this app , you can follow the tutorial . If you further any issues , you can contact our support team .'
                'SUPPORT: iameniyatamil@gmail.com')
          ],
        ),
      ),
    );
  }
}
