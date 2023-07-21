// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_6419c10009/views/search_ui.dart';

class MyProfileUI extends StatelessWidget {
  const MyProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/001.jpg",
      "assets/images/002.jpg",
      "assets/images/003.jpg",
      "assets/images/004.jpg",
      "assets/images/005.jpg",
      "assets/images/006.jpg",
      "assets/images/007.jpg",
      "assets/images/008.jpg",
      "assets/images/009.jpg",
      "assets/images/010.jpg",
      "assets/images/011.jpg",
      "assets/images/012.jpg"
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Sky (2).jpg',
                  ),
                  radius: MediaQuery.of(context).size.width * 0.20,
                ),
                radius: MediaQuery.of(context).size.width * 0.20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'Skyline',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
              Text(
                'Saharat Kongsiri',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
              Text(
                'ID: 6419C10009',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'FOLLOW ME',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.blue,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.9,
                    MediaQuery.of(context).size.width * 0.15,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchUI(),
                    ),
                  );
                },
                child: Text(
                  'SEARCH',
                  style: GoogleFonts.kanit(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: const BorderSide(
                    width: 3,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.white,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.9,
                    MediaQuery.of(context).size.width * 0.15,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.95,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
