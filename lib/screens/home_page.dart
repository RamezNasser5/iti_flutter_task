// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 16, right: 16),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 16, color: Color(0xff5DB075)),
                  ),
                  Text(
                    "Feed",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 16, color: Color(0xff5DB075)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 16, left: 16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF6F6F6),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Search',
                  ),
                ),
              ),
              Categury(),
              Categury(),
              Categury(),
              Categury(),
              Container(
                width: 343,
                height: 227.9,
                color: Color(0xffF0F0F0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Categury extends StatelessWidget {
  const Categury();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 16, left: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 50,
                height: 50,
                color: Color(0xffF6F6F6),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Header"),
                      Text("                                         "),
                      Text("8m ago")
                    ],
                  ),
                  Text("He'll want to use your yacht, and I don't "),
                  Text("want this thing smelling like fish.")
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Divider(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
