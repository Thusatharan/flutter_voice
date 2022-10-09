import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_voice/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                width: MediaQuery.of(context).size.width * 4 / 5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 70,
                                  foregroundImage: AssetImage(
                                      'assets/images/user_image.png'),
                                ),
                                Text(
                                  'Michael Scoffield',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ]),
                        ),
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: kPrimaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Icon(Icons.person)),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Michael',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('Personal Informations'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: kPrimaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Icon(Icons.lock)),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Password',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('Security'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
