import 'package:flutter/material.dart';
import 'package:teachable3/screens/task2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Stack Over Flow')),
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogPage()));
          },icon: Icon(Icons.arrow_forward))],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 30,
            right: 30,
            child: Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 7),
                        blurRadius: 10)
                  ]),
            ),
          ),
          Positioned(
            top: 150,
            left: 165,
            child: Container(
                height: 80,
                width: 80,
                child: Icon(Icons.person),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 2,
                    // ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 7),
                          blurRadius: 10)
                    ])),
          ),
          Positioned(
            top: 250,
            left: 130,
            child: Container(
              child: Text(
                'Maria Elliot',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Positioned(
              top: 285,
              left: 165,
              child: Container(
                child: Text(
                  'Albany,NewYork',
                  style: TextStyle(color: Colors.blue, fontSize: 10),
                ),
              )),
          Positioned(
            top: 360,
            left: 50,
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Purchaced',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '12K',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 190,
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Likes',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '9K',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 300,
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Wished',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '4K',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
