import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SImmobi',
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 80,
          title: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 15, left: width / 100, right: width / 100, bottom: 15),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: SizedBox(
                    width: width,
                    height: height / 14,
                    child: Row(
                      children: [
                        Container(
                          width: width / 1.5,
                          height: height / 15,
                          //color: Colors.red,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width / 20.0, right: width / 20.0),
                                child: Icon(Icons.search, color: Colors.black),
                              ),
                              Text(
                                "recherche",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  style: BorderStyle.solid, width: 0.5),
                              borderRadius: BorderRadius.circular(65)),
                          child: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.filter_alt_outlined,
                                  size: 20, color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.black),
                child: Text(
                  "Residence",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(Icons.meeting_room, color: Colors.black),
                child: Text(
                  "Bureau",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(Icons.deck_sharp, color: Colors.black),
                child: Text(
                  "Espace",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(Icons.new_releases_sharp, color: Colors.black),
                child: Text(
                  "Annonce",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        primary: true,
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.network(
                                "https://th.bing.com/th/id/R.ccb3f813865ff12aa666e30a81563d32?rik=Zez9gTLsVlC%2b%2bA&riu=http%3a%2f%2fwww.capgeris.com%2fimg%2fu%2f1%2fresidence-service-senior-brest.jpg&ehk=fMTca82ssrMGsYNMs%2bq9gqNjpHH8nXOwXageTMBlIVw%3d&risl=&pid=ImgRaw&r=0",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cocody, Côte d'Ivoire",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Professionel",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1-6 Février",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "851\$ par nuit",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.network(
                                "https://th.bing.com/th/id/R.ccb3f813865ff12aa666e30a81563d32?rik=Zez9gTLsVlC%2b%2bA&riu=http%3a%2f%2fwww.capgeris.com%2fimg%2fu%2f1%2fresidence-service-senior-brest.jpg&ehk=fMTca82ssrMGsYNMs%2bq9gqNjpHH8nXOwXageTMBlIVw%3d&risl=&pid=ImgRaw&r=0",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Cocody, Côte d'Ivoire",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.network(
                                "https://th.bing.com/th/id/R.ccb3f813865ff12aa666e30a81563d32?rik=Zez9gTLsVlC%2b%2bA&riu=http%3a%2f%2fwww.capgeris.com%2fimg%2fu%2f1%2fresidence-service-senior-brest.jpg&ehk=fMTca82ssrMGsYNMs%2bq9gqNjpHH8nXOwXageTMBlIVw%3d&risl=&pid=ImgRaw&r=0",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Cocody, Côte d'Ivoire",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.music_video),
            Icon(Icons.camera_alt),
            Icon(Icons.grade),
          ],
        ),
      ),
    );
  }
}
