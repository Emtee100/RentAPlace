import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'listclass.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final TextEditingController itemadd;
  List<item> itemLists = [
    item(
      title: "Calendar",
    ),
    item(title: "Phone Number"),
  ];

  @override
  void initState() {
    itemadd = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    itemadd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          title: Text("QR Code Generate",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              
        ),
        drawer: const Drawer(),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                      itemCount: itemLists.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:
                                  Theme.of(context).colorScheme.primaryContainer),
                          child: ListTile(
                            leading: const Icon(Icons.calendar_month_rounded),
                            title: Text(
                              itemLists[index].title,
                              style: GoogleFonts.poppins(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer),
                            ),
                            subtitle: Text(
                              itemLists[index].subtitle,
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        );
                      }),
            )
          ]
    ),
        
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Add QR Code",
                        style: GoogleFonts.poppins(),
                      ),
                      content: TextField(
                        controller: itemadd,
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                itemLists.add(item(title: itemadd.text));
                                itemadd.clear();
                              });
                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    duration: const Duration(milliseconds: 1000),
                                      content: Text(
                                'Added',
                                style: GoogleFonts.poppins(
                                  color: Colors.white
                                ),
                              )));
                            },
                            child: const Text("Add")),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.poppins(),
                            )),
                      ],
                    );
                  });
            },
            label: Text(
              "Generate QR",
              style: GoogleFonts.poppins(),
            )));
  }
}
