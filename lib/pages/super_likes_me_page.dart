import 'package:dating_app_clone/commons/narrow_app_bar.dart';
import 'package:dating_app_clone/commons/text_style.dart';
import 'package:dating_app_clone/styleguide/colors.dart';
import 'package:flutter/material.dart';

class SuperLikesMePage extends StatelessWidget {
  const SuperLikesMePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NarrowAppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
        trailing: Text(
          "SELECT",
          style: actionMenuStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Super Liked Me",
              style: headingTextStyle.copyWith(color: Colors.black),
            ),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      helperStyle:
                          subTitleStyle.copyWith(color: hintTextColor))),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Text(
                    "Super Likes",
                    style: subTitleStyle.copyWith(color: primaryTextColor),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Text(
                      "5",
                      style: subTitleStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "1h",
                    style: subTitleStyle.copyWith(color: Colors.black),
                  )
                ],
              )),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: ListTile(
                  title: Text(
                    "Anne",
                    style: titleStyle,
                  ),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/location_pin.png",
                        width: 12.0,
                        color: Colors.black,
                      ),
                      Text(
                        "  28 kilometers",
                        style: whiteSubHeadingTextStyle.copyWith(
                            color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/khaleesi.jpg",
                    ),
                  ),
                  trailing: SizedBox(
                    width: 55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                            ),
                            Spacer(),
                            Text(
                              "Online",
                              style: whiteSubHeadingTextStyle.copyWith(
                                  color: Colors.green, fontSize: 12),
                            )
                          ],
                        )),
                        Expanded(
                          child: Icon(
                            Icons.star,
                            color: blueColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 10,
          ))
        ],
      ),
    );
  }
}
