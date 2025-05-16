import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Column(
              children: [
                Text(
                  "Contate-me",
                  style: GoogleFonts.bebasNeue(
                    color: prymariColor,
                    fontSize: MediaQuery.sizeOf(context).width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(),
                TextField(),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Enviar"),
                  icon: Icon(Icons.keyboard_double_arrow_up_rounded),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15,
                  children: List.generate(
                    3,
                    (index) =>
                        Container(width: 40, height: 40, color: Colors.grey),
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Sempre traga algo algum conteudo, ou compartilho minha jornada",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: MediaQuery.sizeOf(context).width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
