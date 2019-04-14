import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';

class MySplashScreen extends StatefulWidget {
  MySplashScreen({Key key}) : super(key: key);

  @override
  MySplashScreenState createState() => new MySplashScreenState();
}

// Custom config
class MySplashScreenState extends State<MySplashScreen> {
  List<Slide> slides = new List();

  void indicateHasRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasRun', true);
  }

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title:
            "A GLIMPSE OF HOPE",
        maxLineTitle: 2,
        styleTitle: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:'Bringing back our dignity starts with us.',
        styleDescription: TextStyle(
            color: Colors.purple,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        marginDescription:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        centerWidget: Text("Let's see",
            style: TextStyle(color: Colors.purpleAccent)),
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff40E0D0),
        backgroundImage: 'assets/slider_welcome.jpeg',
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        title: "WHO MAKES UP OUR SOCIETY?",
        styleTitle: TextStyle(
            color: Colors.purple,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "If we take care of ourselves, Our young generation, Our women : Then we have a brighter future",
        styleDescription: TextStyle(
            color: Colors.purple,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/female.png",
        colorBegin: Color(0xffFFFACD),
        colorEnd: Color(0xffFF6347),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "FINALLY",
        styleTitle: TextStyle(
            color: Colors.purple,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:'Begining from you and me, let\'s endevour for the best of ourselves' ,
        styleDescription: TextStyle(
          color: Colors.purple,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/karonei.png",

        colorBegin: Color(0xffFFA500),
        colorEnd: Color(0xff7FFFD4),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    indicateHasRun();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Welinda()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffD02090),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffD02090),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffD02090),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: Color(0xffD02090),
      sizeDot: 13.0,

      // Locale
      locale: 'en',

      // Show or hide status bar
      shouldHideStatusBar: true,
    );
  }
}
