import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Column(children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            color: Colors.grey,
                            width: 0.75 * screenWidth,
                            height: 0.60 * screenHeight,
                          )
                        ],
                      ), // Top Left Display Pane
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {}, child: Text('1')),
                                  TextButton(
                                      onPressed: () {}, child: Text('2')),
                                  TextButton(onPressed: () {}, child: Text('3'))
                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {}, child: Text('4')),
                                  TextButton(
                                      onPressed: () {}, child: Text('5')),
                                  TextButton(onPressed: () {}, child: Text('6'))
                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {}, child: Text('7')),
                                  TextButton(
                                      onPressed: () {}, child: Text('8')),
                                  TextButton(onPressed: () {}, child: Text('9'))
                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Icon(Icons.send)),
                                  TextButton(
                                      onPressed: () {}, child: Text('0')),
                                  TextButton(
                                      onPressed: () {},
                                      child: Icon(Icons.clear))
                                ],
                              )
                            ],
                          )
                        ],
                      ) // Bottom Left Display Pane
                    ],
                  )
                ]),
                Column(children: [
                  Container(
                    color: Colors.grey,
                    height: screenHeight - 56,
                    width: 0.25 * screenWidth,
                    child: SingleChildScrollView(
                      child: Text('List View Pane'),
                    ),
                  )
                ])
              ],
            )),
      ),
    );
  }
}
