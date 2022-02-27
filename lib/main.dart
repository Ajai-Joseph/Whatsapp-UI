import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';
import 'package:whatsapp/tabs/widgets/floatingButton.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green[900]),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Widget iconButton(
      {required IconData buttonIcon, required void Function() buttonAction}) {
    return IconButton(onPressed: buttonAction, icon: Icon(buttonIcon));
  }

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("WhatsApp"),
        actions: <Widget>[
          iconButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              print("Search");
            },
          ),
          iconButton(
            buttonIcon: Icons.more_vert,
            buttonAction: () {
              print("more");
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: <Widget>[
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Chats(),
          Status(),
          Calls(),
        ],
        controller: tabController,
      ),
      floatingActionButton: tabController.index == 0
          ? FloatingButton(
              buttonIcon: Icons.message,
              buttonFunction: () {
                print("chat");
              })
          : tabController.index == 1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: FloatingButton(
                          buttonIcon: Icons.edit,
                          buttonFunction: () {
                            print("status");
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FloatingButton(
                        buttonIcon: Icons.camera_alt,
                        buttonFunction: () {
                          print("camera");
                        }),
                  ],
                )
              : FloatingButton(
                  buttonIcon: Icons.add_call,
                  buttonFunction: () {
                    print("CAlls");
                  },
                ),
    );
  }
}
