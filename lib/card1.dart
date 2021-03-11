import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 120,
          width: 120,
          child: Stack(
            children: [
              Container(
                height: 120,
                width: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFFffda82),
                  elevation: 5,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(color: Colors.white, width: 2)),
                          elevation: 5,
                          color: Color(0xFFffda82),
                          child: Center(
                            child: Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "S",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      "Black",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
