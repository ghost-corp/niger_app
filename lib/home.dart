import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text("Lorem ipsum"),
      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30, right: 10, left: 10),
          child: Icon(
            Icons.supervisor_account,
            size: 30,
          ),
        )
      ],
    );
  }
}
