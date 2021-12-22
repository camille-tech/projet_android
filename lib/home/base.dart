import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:projetfin/home/pokemon.dart';
import 'package:projetfin/home/menutemtem.dart';

class mybase extends StatefulWidget {
  const mybase({Key? key}) : super(key: key);

  @override
  _mybaseState createState() => _mybaseState();
}
void afficher() {
  print("Hello World !");
}
class _mybaseState extends State<mybase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                ),
                child: Column(
                  children: [
                    Container(

                      padding: const EdgeInsets.all(0),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Container(height: 10,),
                          Text(
                            'compteur',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(height: 10,),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:  BorderRadius.circular(200),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        "https://d3isma7snj3lcx.cloudfront.net/optim/images/photos/30/50/82/47/oneshot-jaquette-ME3050824789_2__220_220__2045-55-2822-819.jpg"
                                    )

                                )
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 0.20),
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:  BorderRadius.circular(20),


                      ),

                      child: Column(
                        children: [
                          Container(height: 75,),

                          RaisedButton(

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pokemon(),
                                ),
                              );

                            },
                            child: new Text('Prokemon'),

                          ),
                          Container(height: 50,),

                          Container(
                            padding: const EdgeInsets.only(top: 0.20),

                            width: double.infinity,

                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius:  BorderRadius.circular(20),


                            ),

                            child: Column(
                              children: [
                                Container(height: 75,),

                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => menutemtem(),
                                      ),
                                    );
                                  },
                                  child: new Text('Temtem'),
                                ),
                                Container(height: 75,),

                              ],

                            ),
                          ),
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
