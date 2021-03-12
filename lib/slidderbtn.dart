import 'package:flutter/material.dart';
import 'package:slide_button/slide_button.dart';

class SlidderBtn extends StatefulWidget {
  @override
  _SlidderBtnState createState() => _SlidderBtnState();
}

class _SlidderBtnState extends State<SlidderBtn> {
  TextEditingController textController1 = TextEditingController();

  TextEditingController textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textController1.text),
            SizedBox(
              height: 10,
            ),
            slider(),
          ],
        ),
      ),
    );
  }

  Widget slider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          child: SlideButton(
            height: 64,
            backgroundChild: Center(
              child: Text("This is a centered text"),
            ),
            backgroundColor: Colors.white,
            slidingBarColor: Colors.blue,
            slideDirection: SlideDirection.RIGHT,
            onButtonOpened: () {
              setState(() {
                textController1.text = "Opened";
              });
            },
            onButtonClosed: () {
              setState(() {
                textController1.text = "Closed";
              });
            },
            onButtonSlide: (value) {
              setState(() {
                textController2.text = value.toString();
                print(value);
              });
            },
          ),
        ),
      ),
    );
  }
}
