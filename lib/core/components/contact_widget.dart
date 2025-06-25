import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/core/app.constants.dart';
import 'package:portifolio/core/services/impl/url_service_impl.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key, this.constexParent});
  final BoxConstraints? constexParent;

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
    return widget.constexParent!.maxWidth > 800
        ? Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: widget.constexParent!.maxWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: widget.constexParent!.maxWidth * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Text(
                          "Contate-me",
                          style: GoogleFonts.bebasNeue(
                            color: prymariColor,
                            fontSize: widget.constexParent!.maxWidth * 0.022,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: widget.constexParent!.maxWidth * 0.4,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              hintText: "Assunto",
                              hintStyle: GoogleFonts.robotoSlab(
                                color: Colors.white,
                                fontSize: widget.constexParent!.maxWidth * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: prymariColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widget.constexParent!.maxWidth * 0.4,
                          child: TextField(
                            maxLines: 8,
                            keyboardType: TextInputType.multiline,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              hintText: "Mensagem",
                              hintStyle: GoogleFonts.robotoSlab(
                                color: Colors.white,
                                fontSize: widget.constexParent!.maxWidth * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: prymariColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          style: ButtonStyle(
                            fixedSize: WidgetStateProperty.all(Size(200, 60)),
                            backgroundColor: WidgetStateProperty.all(
                              prymariColor,
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          label: Text(
                            "Enviar",
                            style: GoogleFonts.bebasNeue(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: widget.constexParent!.maxWidth * 0.02,
                            ),
                          ),
                          icon: Icon(
                            size: widget.constexParent!.maxWidth * 0.03,
                            Icons.keyboard_double_arrow_up_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: widget.constexParent!.maxWidth * 0.45,
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
                                          () => UrlServiceImpl().openLink(
                                            url: icon.url,
                                          ),
                                      child: MouseRegion(
                                        onEnter:
                                            (_) => setState(
                                              () =>
                                                  _hoverStates[icon.img] = true,
                                            ),
                                        onExit:
                                            (_) => setState(
                                              () =>
                                                  _hoverStates[icon.img] =
                                                      false,
                                            ),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          decoration:
                                              _hoverStates[icon.img]!
                                                  ? BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 2,
                                                    ),
                                                  )
                                                  : null,
                                          curve: Curves.decelerate,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              spacing: 10,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                AnimatedContainer(
                                                  key: ValueKey(icon.img),
                                                  duration: Duration(
                                                    milliseconds: 100,
                                                  ),
                                                  curve: Curves.decelerate,
                                                  width:
                                                      _hoverStates[icon.img]!
                                                          ? 50
                                                          : 40,
                                                  height:
                                                      _hoverStates[icon.img]!
                                                          ? 50
                                                          : 40,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        icon.img,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  icon.socialNike,
                                                  style: GoogleFonts.robotoSlab(
                                                    color: Colors.white,
                                                    fontSize:
                                                        widget
                                                            .constexParent!
                                                            .maxWidth *
                                                        0.01,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
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
                          "Sempre trago algum conteúdo, ou compartilho minha jornada!",
                          style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            fontSize: widget.constexParent!.maxWidth * 0.01,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Projeto Feito Totalmente em Flutter ☕",
              style: GoogleFonts.robotoSlab(
                color: Colors.blueAccent,
                fontSize: widget.constexParent!.maxWidth * 0.01,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
        : SizedBox(
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
                        color: prymariColor,
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
                            borderSide: BorderSide(
                              color: prymariColor,
                              width: 2,
                            ),
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
                                : WidgetStateProperty.all(Size(200, 60)),
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
                                  : MediaQuery.sizeOf(context).width * 0.03,
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
                                      () => UrlServiceImpl().openLink(
                                        url: icon.url,
                                      ),
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
