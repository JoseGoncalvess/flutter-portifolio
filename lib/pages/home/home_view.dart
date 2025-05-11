import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/pages/home/home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        backgroundColor: backgroudColor,
        title: Text(
          "INICIO",
          style: GoogleFonts.getFont(
            'Roboto',
            color: prymariColor,
            fontSize: MediaQuery.sizeOf(context).width * 0.1,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: prymariColor,
              size: MediaQuery.sizeOf(context).width * 0.1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OPA, EU SOU GONÇALVES",
                      style: GoogleFonts.getFont(
                        'Bebas Neue',
                        color: Colors.white,
                        fontSize: MediaQuery.sizeOf(context).width * 0.04,
                      ),
                    ),
                    Text(
                      "FLUTTER DEVELOPER",
                      style: GoogleFonts.getFont(
                        'Bebas Neue',
                        color: prymariColor,
                        fontSize: MediaQuery.sizeOf(context).width * 0.09,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      """Academico em Engenharia de software\n com um bom tempo como desenvolvedor mobile resolvendo muito bug.""",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Colors.white,
                        fontSize: MediaQuery.sizeOf(context).width * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
