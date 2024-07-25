import 'package:assignment04/home_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment04/screens/screen.dart';
import 'package:assignment04/screens/todo.dart';

class Dailytodo extends StatefulWidget {
  const Dailytodo({super.key});

  @override
  State<Dailytodo> createState() => _DailytodoState();
}

class _DailytodoState extends State<Dailytodo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 109, 117, 201),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Manage your ",
              style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400),
            ),
            const Text(
              "Daily To DO",
              style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              // color: Colors.green,
              height: 400,
              width: 350,
              child: Image.asset(
                "assets/images/illustration.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              height: 20,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                /////   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () {},
                      child: Text(
                        " ",
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () {},
                      child: Text(
                        "",
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () {},
                      child: Text(
                        "",
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Text(
              "Without much worry just manage",
              style: TextStyle(fontSize: 15),
            ),
            const Text("things as easy as piece or cake",
                style: TextStyle(fontSize: 15)),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Create a Note",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )),
            SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}