// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchUI extends StatelessWidget {
  const SearchUI({super.key});

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
      "assets/images/012.jpg",
      "assets/images/013.jpg",
      "assets/images/014.jpg",
      "assets/images/015.jpg",
      "assets/images/016.jpg",
      "assets/images/017.jpg",
      "assets/images/018.jpg"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(2.0)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'SEARCH',
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blue,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'SEARCH',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.kanit(
                    color: Colors.blue,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    hintStyle: GoogleFonts.kanit(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'ALL RESULTS',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.9,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 9.0,
                    mainAxisSpacing: 9.0,
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
