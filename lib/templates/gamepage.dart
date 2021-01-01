import 'package:flutter/material.dart';
import 'package:lista/templates/clip_rect.dart';
import 'package:lista/widget/image_button.dart';

class GamePage extends StatelessWidget {
  final String image;
  final String icon;
  final Color color;

  const GamePage(
      {Key key,
        @required this.icon,
        @required this.color,
        @required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.115,
          color: color,
          child: Column(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset(
                      icon
                  ),
                )),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                )
              ]
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              ImageButton(size,size.height*0.77),
              ClipPath(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            // colorFilter:
                            // ColorFilter.mode(Colors.purple.withOpacity(0.4),
                            //     BlendMode.colorDodge),
                            image: new AssetImage(
                                image
                            ),
                          )
                      ),
                    ),
                    Container(
                      color: color.withOpacity(0.7),
                    ),
                    Container(
                      color: Colors.white.withOpacity(0.3),
                    )
                  ],
                ),
                clipper: CustomRect(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
