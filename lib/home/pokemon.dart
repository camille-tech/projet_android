import 'package:flutter/material.dart';
import 'package:projetfin/home/base.dart';

class pokemon extends StatefulWidget {
  const pokemon({Key? key}) : super(key: key);

  @override
  _pokemonState createState() => _pokemonState();
}
int adCounter = 0;
double proba = 0.0;
class _pokemonState extends State<pokemon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red
                ),
                child: Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 300,
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
                                'Pokemon',

                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,

                                ),
                              ),
                              Container(height: 100,),

                            ],

                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 0.20),
                            height: 150,
                            width: 200,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:  BorderRadius.circular(20),
                            ),

                            child: Column(
                              children: <Widget>[
                                Container(height: 30,),
                                Text(
                                  adCounter.toString(),
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,

                                  ),
                                ),
                                Container(height: 10,),
                                Text(proba.toStringAsFixed(3)+'%',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,

                                  ),
                                ),
                                Text(
                                  "chance de ranrontre",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                ),
                                ),
                              ],
                            ),

                          )

                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 0.20),
                        height: 450,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Color(0xFFEDDBCC),
                          borderRadius:  BorderRadius.circular(20),
                        ),

                        child: Column(

                          children: <Widget>[
                            Container(height: 50,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(110, 50),
                                      primary: Colors.red,
                                      shape: StadiumBorder(),
                                      padding: EdgeInsets.all(12)),
                                  onPressed: (){
                                    if (adCounter > 0){
                                      adCounter--;
                                      calcule();
                                    }
                                  },
                                  child: Text('-'),
                                ),
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(110, 50),
                                      primary: Colors.green,
                                      shape: StadiumBorder(),
                                      padding: EdgeInsets.all(12)),
                                  onPressed: (){
                                    adCounter++;
                                    calcule();
                                  },
                                  child: Text('+'),
                                ),
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(110, 50),
                                      primary: Colors.green,
                                      shape: StadiumBorder(),
                                      padding: EdgeInsets.all(12)),
                                  onPressed: (){
                                    adCounter++;
                                    adCounter++;
                                    calcule();
                                  },
                                  child: Text('++'),
                                ),

                              ],
                            ),
                            Container(height: 50,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(200, 50),
                                  primary: Colors.red,
                                  shape: StadiumBorder(),
                                  padding: EdgeInsets.all(12)),
                              onPressed: (){
                                adCounter = 0;
                                calcule();
                              },
                              child: Text('rest'),
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

                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
      void calcule() {
        setState(() {
          proba = (adCounter / 4096)*100;
        });
      }
    }
