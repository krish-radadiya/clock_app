import 'package:flutter/material.dart';

class detailspage extends StatefulWidget {
  const detailspage({super.key});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    shape: BoxShape.circle,
                    color: Colors.white70),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.15),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert_sharp,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                        Text(
                          "5:28",
                          style: TextStyle(fontSize: 30, color: Colors.teal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.hourglass_empty_sharp,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.timer_sharp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
