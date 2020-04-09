import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Email extends StatefulWidget {
  static BuildContext context = context;

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  bool nickFillDone = false;
  String name = '';

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration.zero, () {
      showFirstAlert(context);
    });
  }

  showFirstAlert(context) {
    var alertStyle = AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(color: Colors.white),
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.grey[900],
      titleStyle: TextStyle(
        color: Colors.white,
      ),
    );

    Alert(
        context: context,
        style: alertStyle,
        title: "Nickname aku apa cik?",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Nickname",
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              setState(() {
                nickFillDone = true;
              });
              Navigator.pop(context);
            },
            child: Text(
              "CEK!",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 20,
              ),
            ),
          )
        ]).show();
  }

  Widget checkName(context) {
    if (nickFillDone == true && name.toLowerCase() == 'raka') {
      return Text('Hallo mate');
    }
    return Center(child: Text('Nickname Salah'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HAPPY BIRTHDAY KIKI!'),
      ),
      body: checkName(context),
    );
  }
}
