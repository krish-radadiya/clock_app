import 'package:flutter/material.dart';

class Digital_Watch extends StatefulWidget {
  const Digital_Watch({Key? key}) : super(key: key);

  @override
  State<Digital_Watch> createState() => _Digital_WatchState();
}

class _Digital_WatchState extends State<Digital_Watch> {
  int second = 0;

  myClock() {
    Future.delayed(
      const Duration(seconds: 1),
          () {
        setState(
              () {
            // if (DateTime.now().hour > 12) {
            //   DateTime.now().hour -= 12;
            // }
            // second++;
            myClock();
          },
        );
      },
    );
  }

  @override
  void initState() {
    myClock();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Digital Watch",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                title: const Text("Digital Watch"),
                onTap: () {
                  Navigator.of(context).pushNamed('/Digital');
                },
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
            Text(
              "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
