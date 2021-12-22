import 'package:flutter/material.dart';
import 'package:projetfin/home/base.dart';
import 'package:projetfin/home/temtem.dart';
import 'package:projetfin/home/temtemeau.dart';
import 'package:projetfin/home/temtemrp.dart';
import 'package:projetfin/home/temtemrpl.dart';
class menutemtem extends StatefulWidget {
  const menutemtem({Key? key}) : super(key: key);

  @override
  _menutemtemState createState() => _menutemtemState();
}

class _menutemtemState extends State<menutemtem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent
                ),
                child: Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 660,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Container(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                'Menu Temtem',

                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,

                                ),
                              ),
                              Container(height: 100,),

                            ],

                          ),
                          Column(
                            children: [
                              Container(height: 25,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(

                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                    child:
                                        Column(
                                          children: [
                                            Container(height: 25,),
                                            Text('nature chance de \n1/10 000',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(height: 25,),
                                            Container(
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    fixedSize: const Size(50, 20),
                                                    primary: Colors.green,
                                                    shape: StadiumBorder(),
                                                    padding: EdgeInsets.all(2)),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => temtem(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  'Go!',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                )
                                            ),
                                          ), ],
                                        )
                                     
                                  ),
                                  SizedBox(width: 25),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,

                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                      child:
                                      Column(
                                        children: [
                                          Container(height: 25,),
                                          Text('Eau chance de \n1/10 000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Container(height: 25,),
                                          Container(
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    fixedSize: const Size(50, 20),
                                                    primary: Colors.green,
                                                    shape: StadiumBorder(),
                                                    padding: EdgeInsets.all(2)),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => temtemeau(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  'Go!',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                )
                                            ),
                                          ), ],
                                      )
                                  ),
                                ],

                              ),
                              Container(height: 25,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(

                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.purpleAccent,
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                      child:
                                      Column(
                                        children: [
                                          Container(height: 25,),
                                          Text('reproduction chance de \n1/1000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Container(height: 25,),
                                          Container(
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    fixedSize: const Size(50, 20),
                                                    primary: Colors.green,
                                                    shape: StadiumBorder(),
                                                    padding: EdgeInsets.all(2)),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => temtemrp(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  'Go!',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                )
                                            ),
                                          ), ],
                                      )
                                  ),
                                  SizedBox(width: 25),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius:  BorderRadius.circular(20),
                                    ),
                                      child:
                                      Column(
                                        children: [
                                          Container(height: 25,),
                                          Text('reproduction chance de \n1/100\navec luma',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Container(height: 25,),
                                          Container(
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    fixedSize: const Size(50, 20),
                                                    primary: Colors.green,
                                                    shape: StadiumBorder(),
                                                    padding: EdgeInsets.all(2)),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => temtemrpl(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  'Go!',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                )
                                            ),
                                          ), ],
                                      )
                                  ),
                                ],

                              ),
                              Container(height: 75,),
                              Container(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(200, 50),
                                        primary: Colors.white,
                                        shape: StadiumBorder(),
                                        padding: EdgeInsets.all(12)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => mybase(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      '<- home',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }


}
