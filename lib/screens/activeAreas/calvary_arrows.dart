import 'package:flutter/material.dart';

class CalvaryArrowsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calvary Arrows', style: TextStyle(color: Colors.white),),
        backgroundColor:Color.fromRGBO(39, 167, 231, 1),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 1,
            left: 0,
            child: Container(
              width: 392,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    color: Color.fromRGBO(39, 167, 231, 1),
                  ),
                  SizedBox(
                    width: 116,
                  ),
                  Center(
                    child: Baseline(
                      baseline: 24.0,
                      baselineType: TextBaseline.alphabetic,
                      child: RichText(
                        text: TextSpan(
                          text: '32',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(39, 167, 231, 1),
                          ),
                          children: [
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -8),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(39, 167, 231, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: 'C',
                              style: TextStyle(
                                color: Color.fromRGBO(39, 167, 231, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Sunny',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(39, 167, 231, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 25,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 45,
              width: 350,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      'Calvary Arrows',
                      style: TextStyle(fontSize: 25, color: Color.fromRGBO(39, 167, 231, 1), fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 120,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Energy Consumed',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '20Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 1,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 20,
            ),
          ),
          Positioned(
            top: 220,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main School',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '4Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 49,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 2,
            ),
          ),

          Positioned(
            top: 320,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Staff Quarters',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '5Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 49,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 2,
            ),
          ),



          Positioned(
            top: 410,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Boys Hostel',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '5Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 167),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 490,
            left: 49,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 2,
            ),
          ),




          Positioned(
            top: 505,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Girls Hostel',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '5Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 49,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 2,
            ),
          ),


          Positioned(
            top: 590,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              height: 79,
              width: 410,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitchen',
                              style: TextStyle(fontSize: 18, color:Color.fromRGBO(39, 167, 231, 1)),
                            ),
                            Text(
                              '5Kwh',
                              style: TextStyle(fontSize: 20, color: Color.fromRGBO(39, 167, 231, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 205),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Text('') ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,right: 8),
                                child: Container(
                                  height: 50,
                                  child: Text('OFF', style: TextStyle(color: Colors.white, fontSize: 18),) ,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 49,
            child:Container(
              color: Colors.grey[400],
              width: 410,
              height: 2,
            ),
          ),


        ],
      ),
    );
  }
}
