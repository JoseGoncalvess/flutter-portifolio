import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/services/impl/url_service_impl.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final Map<String, bool> _hoverStates = {};

  @override
  void initState() {
    super.initState();
    for (var icon in socialIcons) {
      _hoverStates[icon.img] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.5,
            child: Column(
              spacing: 8,
              children: [
                Text(
                  "Contate-me",
                  style: GoogleFonts.bebasNeue(
                    color: Colors.white,
                    fontSize: MediaQuery.sizeOf(context).width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: "Assunto",
                    hintStyle: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: prymariColor, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "Mensagem",
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: MediaQuery.sizeOf(context).width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: prymariColor, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    fixedSize:
                        MediaQuery.sizeOf(context).width < 768
                            ? null
                            : WidgetStateProperty.all(Size(300, 100)),
                    backgroundColor: WidgetStateProperty.all(prymariColor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Enviar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize:
                          MediaQuery.sizeOf(context).width < 768
                              ? null
                              : MediaQuery.sizeOf(context).width * 0.04,
                    ),
                  ),
                  icon: Icon(
                    size:
                        MediaQuery.sizeOf(context).width < 768
                            ? null
                            : MediaQuery.sizeOf(context).width * 0.04,
                    Icons.keyboard_double_arrow_up_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15,
                  children:
                      socialIcons
                          .map(
                            (icon) => GestureDetector(
                              onTap:
                                  () =>
                                      UrlServiceImpl().openLink(url: icon.url),
                              child: MouseRegion(
                                onEnter:
                                    (_) => setState(
                                      () => _hoverStates[icon.img] = true,
                                    ),
                                onExit:
                                    (_) => setState(
                                      () => _hoverStates[icon.img] = false,
                                    ),
                                child: AnimatedContainer(
                                  key: ValueKey(icon.img),
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.bounceOut,
                                  width: _hoverStates[icon.img]! ? 60 : 40,
                                  height: _hoverStates[icon.img]! ? 60 : 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(icon.img),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Sempre trago algum conteúdo, ou compartilho minha jornada",
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
