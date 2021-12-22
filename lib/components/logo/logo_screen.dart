import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-custom-clipper-28c6d380fdd6
//https://educity.app/flutter/custom-clipper-in-flutter
//https://www.youtube.com/watch?v=8QdLBQhnHAQ

class Logo extends StatefulWidget {
  final double size;
  final Color color;
  final Color bgColor;
  const Logo({
    Key? key,
    required this.size,
    required this.color,
    this.bgColor = Colors.transparent, //background fundo
  }) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: widget.bgColor,
        height: widget.size,
        width: widget.size,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //side left logo
              Stack(
                children: [
                  ClipPath(
                    clipper: LogoClipLeft(),
                    child: Container(
                      width: constraints.maxWidth * 0.48, //largura max direita
                      decoration: BoxDecoration(
                        color: widget.color,
                      ),
                    ),
                  ),
                  Positioned(
                    //direção circulo esquerdo
                    left: constraints.maxWidth * 0.15, //posiçao da esfera
                    bottom: constraints.maxHeight * 0.6,
                    child: Container(
                      //circulo esquerdo alto
                      height: constraints.maxWidth * 0.19,
                      width: constraints.maxWidth * 0.19,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color,
                      ),
                    ),
                  ),
                ],
              ),

              //radius contorno
              ClipPath(
                clipper: BigLogoClipRight(),
                child: Container(
                  width: constraints.maxWidth * 0.42, //largura direita maxima
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.only(
                      topRight: //radius top direito
                          Radius.circular(constraints.maxWidth * 0.42 / 2),
                      bottomRight: //radius baixo direito
                          Radius.circular(constraints.maxWidth * 0.42 / 2),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class BigLogoClipRight extends CustomClipper<Path> {
  double radius = 10;
  @override

  //tamanho circulo
  Path getClip(Size size) {
    var pathScreen = Path()
      ..addOval(
        Rect.fromCircle(
            center: Offset(size.width / 2,
                size.height * 0.5638), //posicionamento do circulo
            radius: size.width * 0.23), //tamanho circulo
      )
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);
    pathScreen.close();
    return pathScreen;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

//esquedo
class LogoClipLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var pathScreen = Path()
      //largura interna
      //recorte interno
      ..addRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            Offset(w * 0.19, w * 0.19), //paredes internas
            Offset(w * 0.83, h - w * 0.19),
          ),
          topLeft: Radius.circular(w / 3), //radius top esquerdo interno
          bottomLeft: Radius.circular(w / 3),
        ),
      )
      //largura externa

      ..lineTo(w, 0)
      ..lineTo(w * 0.5, 0) //radius superior esquedo
      ..quadraticBezierTo(w * 0.1, w * 0.1, 3, w * 0.5) //aqui
      ..lineTo(3, h - w * 0.5) // radius baixo esquerdo //mexi
      ..quadraticBezierTo(w * 0.1, h - 2, w * 0.5, h)
      ..lineTo(w, h)
      ..lineTo(w, 0); //distorção

    pathScreen.close();
    return pathScreen;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
