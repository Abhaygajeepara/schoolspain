import 'package:flutter/material.dart';
import 'package:lista/templates/clip_rect.dart';
import 'package:lista/templates/text_to_speech.dart';
import 'package:lista/widget/image_button.dart';

class Module6 extends StatefulWidget {
  final String image;
  final String icon;
  final Color color;

  const Module6(
      {Key key,
        @required this.icon,
        @required this.color,
        @required this.image})
      : super(key: key);

  @override
  _Module6State createState() => _Module6State();
}

class _Module6State extends State<Module6> {
  TextToSpeech credittextToSpeech = TextToSpeech();
  TextToSpeech investtextToSpeech = TextToSpeech();
  TextToSpeech stocktextToSpeech = TextToSpeech();
  int index = 0;
  // List<String> data  = [
  //  'Credit is the ability to borrow money or access goods or services with the understanding that youll pay later.Lenders, merchants and service providers  grant credit based on their confidence you can be trusted to pay back what you borrowed, along with any finance charges that may apply.To the extent that creditors consider you worthy of their trust, you are said to be creditworthy, or to have "good credit.'
  // 'An investment is an asset or item acquired with the goal of generating income or appreciation. Appreciation refers to an increase in the value of an asset over time. When an individual purchases a good as an investment, the intent is not to consume the good but rather to use it in the future to create wealth. An investment always concerns the outlay of some asset today—time, money, or effort—in hopes of a greater payoff in the future than what was originally put in.'
  // 'The stock market refers to the collection of markets and exchanges where regular activities of buying, selling, and issuance of shares of publicly-held companies take place. Such financial activities are conducted through institutionalized formal exchanges or over-the-counter (OTC) marketplaces which operate under a defined set of regulations. There can be multiple stock trading venues in a country or a region which allow transactions in stocks and other forms of securities.'
  // ];
  List<String> data = [
    'Credit is the ability to borrow money or access goods or services with the understanding that youll pay later.Lenders, merchants and service providers  grant credit based on their confidence you can be trusted to pay back what you borrowed, along with any finance charges that may apply.To the extent that creditors consider you worthy of their trust, you are said to be creditworthy, or to have good credit.',
    'An investment is an asset or item acquired with the goal of generating income or appreciation. Appreciation refers to an increase in the value of an asset over time. When an individual purchases a good as an investment, the intent is not to consume the good but rather to use it in the future to create wealth. An investment always concerns the outlay of some asset today—time, money, or effort—in hopes of a greater payoff in the future than what was originally put in.',
    'The stock market refers to the collection of markets and exchanges where regular activities of buying, selling, and issuance of shares of publicly-held companies take place. Such financial activities are conducted through institutionalized formal exchanges or over-the-counter (OTC) marketplaces which operate under a defined set of regulations. There can be multiple stock trading venues in a country or a region which allow transactions in stocks and other forms of securities',
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   credittextToSpeech.stop();
    investtextToSpeech.stop();
    stocktextToSpeech.stop();
  }
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  Future playaudio(int index )async{
    print(index.toString());
    print(data[index]);
    credittextToSpeech.stop();
    investtextToSpeech.stop();
    stocktextToSpeech.stop();
    if(index == 2){

      stocktextToSpeech.setData(data[index]);
      stocktextToSpeech.speak();
    }
    else if(index == 1){
      investtextToSpeech.setData(data[index]);
      investtextToSpeech.speak();

    }
    else if(index ==0 ){
      credittextToSpeech.setData(data[index]);
      credittextToSpeech.speak();
    }
    else{

    }
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fontweight = FontWeight.bold;
    double fontsize = size.height *0.02;
    // credittextToSpeech.stop();
    // investtextToSpeech.stop();
    // stocktextToSpeech.stop();
    return Stack(
      children: [

        Align(
          alignment: Alignment(0.0, -0.7),
          child: Container(
            width: size.width * 0.4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CREDITO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: (){

                    setState(() {
                      playaudio(0);
                    });
                  },
                  child: Image.asset(
                    'asset/Module6/credit.png',
                    height: size.height * .1,
                    fit: BoxFit.cover,
                  ),
                ),


              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, -0.1),
          child: Container(
            width: size.width * 0.4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'INVERSIÓN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: (){

                    setState(() {
                      playaudio(1);
                    });
                  },
                  child: Image.asset(
                    'asset/Module6/invest.png',
                    height: size.height * .1,
                    fit: BoxFit.cover,
                  ),
                ),


              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.5),
          child: Container(
            width: size.width * 0.4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'BOLSA DE VALORES',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: fontweight,
                    fontSize: fontsize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: (){

                    setState(() {
                      playaudio(2);
                    });

                  },
                  child: Image.asset(
                    'asset/Module6/stock.png',
                    height: size.height * .1,
                    fit: BoxFit.cover,
                  ),
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}
