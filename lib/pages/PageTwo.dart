import 'dart:ffi';

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  double textOpacity = 1.0;

  @override
  void initState() {
    print("testing initState");
    hideOrShowText();
    super.initState();
  }

  hideOrShowText() {
    setState(() {
      if (textOpacity == 0) {
        textOpacity = 1;
      } else {
        textOpacity = 0;
      }
    });

    Future.delayed(Duration(seconds: 2), () {
      hideOrShowText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: textOpacity,
              child: Text(
                "Hello World!",
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    textOpacity = 1;
                  });
                },
                child: Text("press to hide the text"))
          ],
        ),
      ),
    );
  }
}
