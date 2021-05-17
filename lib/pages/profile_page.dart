import 'package:dating_app_clone/commons/my_info.dart';
import 'package:dating_app_clone/commons/opaque_image.dart';
import 'package:dating_app_clone/commons/profile_info_big_card.dart';
import 'package:dating_app_clone/commons/profile_info_card.dart';
import 'package:dating_app_clone/commons/text_style.dart';
import 'package:dating_app_clone/pages/super_likes_me_page.dart';
import 'package:dating_app_clone/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Stack(
                    children: <Widget>[
                      OpaqueImage(
                        imageUrl: "assets/images/khaleesi.jpg",
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                              MyInfo()
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.only(top: 34),
                    color: Colors.white,
                    child: Table(
                      children: [
                        TableRow(children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New Matches",
                            icon: Icon(
                              Icons.star,
                              size: 26,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              height: 26,
                              color: blueColor,
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          ProfileInfoBigCard(
                            firstText: "264",
                            secondText: "All Matches",
                            icon: Image.asset(
                              "assets/icons/checklist.png",
                              width: 26,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "42",
                            secondText: "Rematches",
                            icon: Icon(
                              Icons.refresh,
                              size: 26,
                              color: blueColor,
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          ProfileInfoBigCard(
                            firstText: "404",
                            secondText: "Profile Visitors",
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 26,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SuperLikesMePage()));
                            },
                            child: ProfileInfoBigCard(
                              firstText: "42",
                              secondText: "Super Likes",
                              icon: Icon(
                                Icons.favorite,
                                size: 26,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ]),
                        // TableRow(),
                        // TableRow()
                      ],
                    ),
                  ))
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 60 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfileInfoCard(firstText: "54%", secondText: "Progress"),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(firstText: "152", secondText: "Level"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
