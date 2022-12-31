import 'package:flutter/material.dart';
import 'package:navbar_bottom/pages/navpages/main_page.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

  class _splashState extends State<splash> {
    @override
    void initState() {
      super.initState();
      _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E2E33),
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            child: Image.asset('assets/logo.png'),
          )
        )
    );
  }
}
