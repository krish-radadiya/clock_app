import 'package:flutter/material.dart';

class Strap_Watch extends StatefulWidget {
  const Strap_Watch({Key? key}) : super(key: key);

  @override
  State<Strap_Watch> createState() => _Strap_WatchState();
}

class _Strap_WatchState extends State<Strap_Watch> {
  int s = 0;
  int m = 0;
  int h = 0;
  int d = 0;
  int mm = 0;

  myClock() {
    Future.delayed(
      const Duration(seconds: 1),
          () {
        setState(
              () {
            s = DateTime.now().second;
            m = DateTime.now().minute;
            h = DateTime.now().hour;
            d = DateTime.now().day;
            mm = DateTime.now().month;
          },
        );
        myClock();
      },
    );
  }

  void initState() {
    myClock();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      drawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text("Strap Watch"),
                onTap: () {
                  Navigator.of(context).pushNamed('/Strap');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text("Digital Watch"),
                onTap: () {
                  Navigator.of(context).pushNamed('/Digital');
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Strap Watch",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Transform.scale(
              scale: 8,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.teal,
                value: s / 60,
              ),
            ),
            Transform.scale(
              scale: 6,
              child: CircularProgressIndicator(
                strokeWidth: 5,
                color: Colors.blue,
                value: DateTime.now().minute / 60,
              ),
            ),
            Transform.scale(
              scale: 4,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                color: Colors.red,
                value: h / 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
