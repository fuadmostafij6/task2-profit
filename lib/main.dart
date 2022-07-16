import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Profit(),
    );
  }
}

class Profit extends StatefulWidget {
  const Profit({Key? key}) : super(key: key);

  @override
  State<Profit> createState() => _ProfitState();
}

class _ProfitState extends State<Profit> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#f9f8fd"),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
        backgroundColor: HexColor("#f5f6f8"),
        elevation: 0,
        title: const Text(
          "Profit",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: HexColor("#f5f6f8"),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text("G"),
                            const Text(
                              "100",
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.add,
                              color: HexColor("#53be92"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: HexColor("#f5f6f8"),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text("W"),
                            const Text(
                              "100",
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.add,
                              color: HexColor("#53be92"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height: size.height * 0.065,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: HexColor("#53be92"),
                      border: Border.all(
                        width: 1,
                        color: HexColor("#f5f6f8"),
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.list_alt,
                          color: Colors.white,
                        ),
                        Text(
                          "Mission",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  margin: const EdgeInsets.only(left: 7),
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                      color: HexColor("#f5f6fa"),
                      border: Border.all(color: HexColor("#eff0f4")),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Distance".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18, color: HexColor("#a1a8b9")),
                            ),
                            Icon(
                              Icons.add_road,
                              size: 24,
                              color: HexColor("#a1a8b9"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: Row(
                          children: const [
                            Text(
                              "120",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text("KM")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  height: 120,
                  width: size.width * 0.45,
                  decoration: BoxDecoration(
                      color: HexColor("#f5f6fa"),
                      border: Border.all(color: HexColor("#eff0f4")),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "EARNED".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18, color: HexColor("#a1a8b9")),
                            ),
                            Icon(
                              Icons.add_road,
                              size: 24,
                              color: HexColor("#a1a8b9"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: Row(
                          children: const [
                            Text(
                              "230",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text("WAY")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: size.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)

                ),

                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text("Buick Sheldon", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: HexColor("#4f5065")),),
                          Icon(Icons.refresh, size: 30, color: HexColor("#4f5065"),)
                        ],
                      ),
                    ), 
                    Image.asset("assets/images/car.png",fit: BoxFit.cover,height: 300,),
                    Container(
                      decoration:  BoxDecoration(
                        color: HexColor("#f5f6fa"),
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.oil_barrel_outlined, color: HexColor("#8b96b2"),),
                                Text("Fuel".toUpperCase(), style: TextStyle(color: HexColor("#8b96b2")),)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("20", style: TextStyle(
                                      color:HexColor("#56b08e")
                                    ),),
                                    const Text("/50"),
                                  ],
                                ),
                                Container(
                                  width: size.width*0.5,
                                  height: 10,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)

                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.25,
                                    valueColor:  AlwaysStoppedAnimation<Color>(HexColor("#56b08e")),
                                    backgroundColor: Colors.white,
                                  ),
                                )
                              ],
                            ),

                            Container(
                              height: 25,
                                width: 25,
                                decoration:const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                                ),
                                child:const Icon(Icons.add, color: Colors.white,))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25.0,),

                    Container(
                        height: 50,
                        width: size.width*0.85,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:
                      const  Center(child: Text("Grab it", style: TextStyle(color: Colors.white, fontSize: 24),))),

                    const SizedBox(height: 20.0,),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Icon(Icons.info_outline, color: HexColor("#56b993"),),
                          Expanded(child: Text("Grape 1km will cost 1 Fuel to complete. Fill the Fuel tank to grape more reword.(10km = 1 Way)", style: TextStyle(color: HexColor("#666977")),))
                        ],
                      ),
                    )




                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
