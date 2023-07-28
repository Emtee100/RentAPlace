import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentAPlace',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
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
  List<String> categories = ["Co-working", "Private office", "WorkStation"];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          //start of the body
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 25.0),
                  child: Text("Where do you want to work?",
                      style: TextStyle(
                          fontSize: 20, color: Colors.grey.shade700))),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on, size: 30),
                    Text(
                      "Delaware, DA",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(
            height: 20.0,
          ),

//Categories row. It shows all the categories that a place may fall under

          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = index;
                          });
                        },
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: selectedCategory == index
                                  ? Theme.of(context).colorScheme.inversePrimary
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_rounded,
                                color: selectedCategory == index
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : Colors.black,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                categories[index],
                                style: TextStyle(
                                    color: selectedCategory == index
                                        ? Colors.white
                                        : Colors.black),
                              )
                            ],
                          )),
                        ),
                      ),
                    );
                  }),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "12 places found",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Text(
                        "2",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(Icons.filter_list_rounded),
                  ],
                )

                
              ],
            ),
          )
        ],
      )),
    );
  }
}
