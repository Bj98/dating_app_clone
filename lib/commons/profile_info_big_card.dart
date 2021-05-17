import 'package:dating_app_clone/commons/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;

  const ProfileInfoBigCard(
      {Key key,
      @required this.firstText,
      @required this.secondText,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 8, bottom: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(alignment: Alignment.topRight, child: icon),
            Text(
              firstText,
              style: titleStyle,
            ),
            Text(
              secondText,
              style: subTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
