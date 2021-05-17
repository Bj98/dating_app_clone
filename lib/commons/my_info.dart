import 'package:dating_app_clone/commons/radial_progress.dart';
import 'package:dating_app_clone/commons/text_style.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RadialProgress(
            width: 4,
            goalCompleted: 0.9,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/khaleesi.jpg"),
            )),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Emilia Clarke",
              style: whiteNameTextStyle,
            ),
            Text(
              ", 34",
              style: whiteNameTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/icons/location_pin.png",
              width: 20.0,
              color: Colors.white,
            ),
            Text(
              "  28 kilometers",
              style: whiteSubHeadingTextStyle,
            )
          ],
        )
      ],
    ));
  }
}
