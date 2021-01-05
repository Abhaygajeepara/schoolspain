

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista/common/inputDecoration.dart';


class Module1 extends StatefulWidget {
  final String image;
  final String icon;
  final Color color;

  const Module1(
      {Key key,
      @required this.icon,
      @required this.color,
      @required this.image})
      : super(key: key);

  @override
  _Module1State createState() => _Module1State();
}

class _Module1State extends State<Module1> {
  double saving = 0.00 ;
  double income = 0.00;
  double expanse = 0.00 ;
  double dreamproduct = 0.00;
  int month =12;
  double dreamemi = 0.00;

  // TextEditingController income = TextEditingController();
  // TextEditingController expanse = TextEditingController();
  // TextEditingController dreamitremprice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('build');

    final fontweight = FontWeight.bold;
    double fontsize = size.height *0.0175;

    print(income.toString());
    // saving = income - expanse;
// TODO:set width of image 
    return  Stack(
      children: [


        // income Textbox
        Align(
          alignment: Alignment(-0.75, -0.82),
          child: Container(
            width: size.width * 0.32,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'DIGITA UN VALOR DE GANANCIA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02),
                  height: size.height * .03,
                  child: TextFormField(
                    initialValue: income.toString(),
                    textAlign: TextAlign.center,
                    maxLength: 10,

                    keyboardType: TextInputType.phone,
                    decoration: inputDecoration.copyWith(counterText: ''),
                    // controller: income,
                    onChanged: (val) {
                     setState(() {
                       income = double.parse(val);
                       saving = income - expanse;
                     });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        // coin image
        Align(
          alignment: Alignment(0.73, -0.9),
          child: Container(
            width: size.width * 0.4,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                          'asset/Module1/coin.png',
                          height: size.height * .08,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          '¿ DONDE PONDRÍAS TU DINERO ? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: fontweight,
                            fontSize: fontsize,
                          ),
                        ),
              ],
            ),
          ),
        ),
        //vegetables
        Align(
          alignment: Alignment(-0.7, -0.45),
          child: Container(
            width: size.width * 0.35,
            child: Image.asset(
              'asset/Module1/vegetables.png',
              height: size.height * .08,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // expanse textbox
        Align(
          alignment: Alignment(0.65, -0.42),
          child:Container(
            width: size.width * 0.32,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'NECESIDAD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02),
                  height: size.height * .03,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    initialValue: expanse.toString(),
                    maxLength: 10,

                    keyboardType: TextInputType.phone,
                    decoration: inputDecoration.copyWith(counterText: ''),
                    // controller: income,
                    onChanged: (val) {
                      setState(() {
                        expanse = double.parse(val);
                        saving = income - expanse;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        // horizontal line
        Align(
          alignment: Alignment(-0.5,-0.283),
          child: Container(
            width: size.width * 0.7,
            child: Divider(
              thickness: 5,
              color :Colors.black
            ),
          ),
        ),
        // pig image
        Align(
          alignment: Alignment(-0.5, -0.13),
          child: Container(
            width: size.width * 0.2,
            child: Image.asset(
              'asset/Module1/pig.png',
              height: size.height * .06,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // pig image divider
        Align(
          alignment: Alignment(-0.8,0.0),
          child: Container(
            width: size.width * 0.4,
            child: Divider(
                thickness: 5,
                color :Colors.black
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.6,-0.1),
          child: Container(
            width: size.width * 0.32,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'AHORRO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Container(
                  width: size.width* 0.32,

                    height: size.height * 0.028,
                    decoration: BoxDecoration(
                      color: Color(0xffee9208),
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Center(

                      child: Text(
                          saving.toStringAsFixed(3).toString(),


                      ),

                    )
                )
              ],
            ),
          ),
        ),
        // second title
        Align(
          alignment: Alignment(-0.1,0.08),
          child: Text(
            '¿en cuanto tiempo deseas alcanzar tu sueño? ',

            style: TextStyle(
              fontWeight: fontweight,
              fontSize: 16.0,
            ),
          ),
        ),
        //dream
        Align(
          alignment: Alignment(-0.6,0.22),
          child: Text(
            'SUEÑO',

            style: TextStyle(
              fontWeight: fontweight,
              fontSize: fontsize,
            ),
          ),
        ),
        // price and textform
        Align(
          alignment: Alignment(-0.1,0.22),
          child: Container(
            width: size.width * 0.32,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'valor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02),
                  height: size.height * .03,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    initialValue: dreamproduct.toString(),
                    maxLength: 10,

                    keyboardType: TextInputType.phone,
                    decoration: inputDecoration.copyWith(counterText: ''),
                    // controller: income,
                    onChanged: (val) {

                      setState(() {
                      dreamproduct = double.parse(val);
                      dreamemi = dreamproduct / month;

                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.6,0.3),
          child: Container(
            width: size.width * 0.12,
            height: size.height * 0.06,
            // TODO decoration image

            // decoration: BoxDecoration(
            //     // color: Colors.white,
            //   image: DecorationImage(
            //     image: AssetImage(
            //       'asset/Module1/month.png'
            //     )
            //   ),
            //   // borderRadius:BorderRadius.circular(5.0),
            //   // border: Border.all(color: Colors.black)
            // ),
            child:Stack(

              children: [
                Image.asset('asset/Module1/month.png'),
                Align(
                  alignment: Alignment(-0.6,0.7),
                  child: Container(
                    width: size.width * 0.080,
                    height: size.height * 0.030,
                    color: Colors.white,
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                      initialValue: month.toString(),
                        maxLength: 2,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                        keyboardType: TextInputType.phone,
                        decoration:monthinputbox,
                        // controller: income,
                        onChanged: (val) {
                          setState(() {

                            if(int.parse(val) != 0){
                              month =int.parse(val);
                              dreamemi =  dreamproduct / month;
                            }



                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )

            ),
          ),
        Align(
          alignment: Alignment(-0.55, 0.4),
          child: Container(
            width: size.width * 0.25,
            child: Image.asset(
              'asset/Module1/bike.png',
              height: size.height * .075,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // On average you need to save
        Align(
          alignment: Alignment(0.2,0.51),
          child: Text(
            'En promedio necesitas ahorrar',

            style: TextStyle(
              fontWeight: fontweight,
              fontSize: fontsize,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.2,0.58),
          child: Container(
              width: size.width* 0.32,

              height: size.height * 0.028,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  color: Color(0xffee9208),
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Center(
                // TODO :: change text
                child: Text(
                    dreamemi.toStringAsFixed(3).toString()),
              )
          )
        ),
        Align(
          alignment: Alignment(0.3,0.68),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width* 0.08),
            child: Text(
              'Ahorrando ese valor mensual podrás alcanzar tu sueño sin dejar atrás tus verdaderas necesidades',
                textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: fontweight,
                fontSize: fontsize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
