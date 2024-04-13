import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local_trains.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Sofia Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int karma = 0;
  List<IconData> icons = [
      CupertinoIcons.bus,
      CupertinoIcons.train_style_one,
      CupertinoIcons.train_style_two,
      CupertinoIcons.car_detailed,
  ];
  List<String> names = ["Bus", "Local Train", "Metro", "Electric Vehicles"];
  List<Widget> pages = [LocalTrains()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 104, 74, 1),
      body: Center(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 80,
                      child: Card(
                        color: Color.fromRGBO(122, 197, 159, 1),
                        child: Center(
                          child: ListTile(
                            leading: Icon(icons[index], color: Colors.white,),
                            title: Text(
                              names[index],
                              style: TextStyle(fontSize: 30, color: CupertinoColors.white),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  CupertinoPageRoute(builder: (context) => LocalTrains()));
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                color: CupertinoColors.black,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Container(
                child: Card(
                  color: Color.fromRGBO(122, 197, 159, 1),
                  child: ListTile(
                    leading: Icon(CupertinoIcons.quote_bubble, color: Colors.white,),
                    title: Text(
                      "By choosing sustainable transportation, we can decrease our carbon footprint and contribute to mitigating climate change. (FasterCapital)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                color: CupertinoColors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                child: Card(
                  color: Color.fromRGBO(122, 197, 159, 1),
                  child: Center(
                    child: ListTile(
                      leading: Icon(CupertinoIcons.flame, color: Colors.white,),title: Text("Karma = ${karma}", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
