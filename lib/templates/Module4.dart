import 'package:flutter/material.dart';
import 'package:lista/common/inputDecoration.dart';
import 'package:lista/templates/clip_rect.dart';
import 'package:lista/widget/image_button.dart';

class Module4 extends StatefulWidget {
  final String image;
  final String icon;
  final Color color;

  const Module4(
      {Key key,
        @required this.icon,
        @required this.color,
        @required this.image})
      : super(key: key);

  @override
  _Module4State createState() => _Module4State();
}

class _Module4State extends State<Module4> {
  double rent =0.0;
  double health = 0.0;
  double monthlyincome = 0.0;
  double interestrate =0.0;
  double monthlyemi= 0.0;
  double expectedemi = 0.0 ;
  double ratio = 0.0;
  double amountaithintrest ;
  double loanamount =30000000;
  double happiness = 0.0;


  getsaving(){
    setState(() {
      print('bulid');
      // monthlyemi = monthlyincome - rent - health;
      double localinterest = loanamount * interestrate /100;
      amountaithintrest = loanamount + localinterest;
      // print(amountaithintrest.toString());
      double anualamount = monthlyemi *12; //  total amount of 12 month
      // print('pay '+ anualamount.toString());
      double remaining = amountaithintrest - anualamount;
       print(remaining.toString());
      if(remaining >0.0){
       happiness = remaining / monthlyemi;
       print(happiness.toString());
       if(happiness > 100)
         {
           happiness = 100;
         }
       else if(happiness < 0)
         {
           happiness = 0;
         }



      }
      else{
        happiness = 0.0;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fontweight = FontWeight.bold;
    double fontsize = size.height *0.0175;


monthlyemi = monthlyemi;
    return Column(
      children: [
        Container(
          height: size.height * 0.115,
          color: widget.color,
          child: Column(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset(
                      widget.icon
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
                                widget.image
                            ),
                          )
                      ),
                    ),
                    Container(
                      color: widget.color.withOpacity(0.7),
                    ),
                    Container(
                      color: Colors.white.withOpacity(0.3),
                    )
                  ],
                ),
                clipper: CustomRect(),
              ),
              // loan line
              Align(
                alignment: Alignment(-0.1, -0.85),
                child: Text(
                  'El banco te presta 3’000,000 para tu educaión ',

                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
              ),
             Align(
               alignment: Alignment(0.0,-0.7),
               child: Image.asset(
                 'asset/Module4/moneymore.png',
                 height: size.height * 0.09,
                 fit: BoxFit.cover,
               ),
             ),
              Align(
                alignment: Alignment(0.0,-0.4),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02,vertical:size.height * 0.01 ),
                  height: size.height * 0.092,
                    width:  size.width * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(color:Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          Text(
                            'tienes que pagar, arriendo de:',

                            style: TextStyle(
                              fontWeight: fontweight,
                              fontSize: fontsize,
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Expanded(
                            child: TextFormField(
                               // style: TextStyle(
                    //   color: Colors.green
                    // ),
                              
                              textAlign: TextAlign.center,
                              initialValue: rent.toString(),
                              keyboardType: TextInputType.phone,
                                decoration: module4input,
                              onChanged: (val){
                                 setState(() {
                                   rent = double.parse(val);
                                   getsaving();
                                 });
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size.width * 0.01),
                      Row(

                        children: [
                          SizedBox(width: size.width * 0.05),
                          Text(
                            'tienes que pagar salud:',

                            style: TextStyle(
                              fontWeight: fontweight,
                              fontSize: fontsize,
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Expanded(
                            child: TextFormField(
                               // style: TextStyle(
                    //   color: Colors.green
                    // ),
                              
                              initialValue: health.toString(),
                              keyboardType: TextInputType.phone,
                              decoration: module4input,
                              textAlign: TextAlign.center,
                              onChanged: (val){
                                setState(() {
                                  health = double.parse(val);
                                  getsaving();
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
              Align(
                alignment: Alignment(0.0,-0.2),
                child: Text(
                  'te están pagando en un trabajo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0,-0.14),
                child: Container(
                  width: size.width *0.3,

                  child: TextFormField(
                    // style: TextStyle(
                    //   color: Colors.green
                    // ),
                    
                    initialValue: monthlyincome.toString(),
                    keyboardType: TextInputType.phone,
                    decoration: inputDecoration.copyWith(
                      contentPadding: EdgeInsets.symmetric(vertical: size.height * .002),
                      isDense: true
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (val){
                      setState(() {
                        monthlyincome = double.parse(val);
                        getsaving();
                        getsaving();
                      });

                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.5,0.1),
                child: Image.asset(
                  'asset/Module4/moneyless.png',
                  height: size.height * 0.07,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment(0.6, 0.07),
                child:Container(
                  width: size.width * 0.32,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Interes',
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
                          initialValue: interestrate.toString(),


                          keyboardType: TextInputType.phone,
                          decoration: inputDecoration,
                          // controller: income,
                          onChanged: (val) {
                            setState(() {
                              interestrate = double.parse(val);
                              getsaving();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0,0.25),
                child: Container(
                  width: size.width * 0.8,
                  child: Text(
                    'CUANTO DINERO TIENES QUE PAGAR MENSUAL AL BANCO PARA NO EN DEUDARTE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: fontweight,
                      fontSize: fontsize,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0,0.35),
                child: Container(
                  width: size.width *0.3,

                  child: TextFormField(


                    initialValue: monthlyemi.toString(),
                    keyboardType: TextInputType.phone,
                    decoration: inputDecoration.copyWith(
                        contentPadding: EdgeInsets.symmetric(vertical: size.height * .002),
                        isDense: true
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (val){
                      setState(() {
                        monthlyemi = double.parse(val);

                        getsaving();
                      });
                    },
                  ),
                ),
              ),

              Align(
                alignment: Alignment(0.0,0.5),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(color: Colors.black,width: 2)
                  ),
                  width: size.width *0.6,
                  height: size.height* 0.033,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(

                      inactiveTrackColor: Colors.transparent, // Custom Gray Color
                      activeTrackColor: Colors.transparent,
                      thumbColor: Colors.green,

                    ),
                    child: Slider(
              label: 'ss',

                      value:happiness,
                      min: 0,
                      max: 100,
                      onChanged: (val){},
                    ),
                  ),

                ),
              ),Align(
                alignment: Alignment(-0.65,0.5),
                child: Image.asset(
                  'asset/Module4/happy.png',

                  height: size.height*0.038,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment(0.65,0.5),
                child: Image.asset(
                  'asset/Module4/angry.png',

                  height: size.height*0.038,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
