import 'package:flutter/material.dart';
// import 'package:navbar_bottom/pages/navpages/genre_page.dart';
// import 'package:navbar_bottom/pages/navpages/home_page.dart';
// import 'package:navbar_bottom/pages/navpages/member_page.dart';
import 'package:perpuskom/pages/navpages/profile_page.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 46, 46, 51),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          // child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // CONTENT HERE

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 205.0, 80.0, 0),
                child: Text(
                  'Masukkan Kode OTP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 140,
                child: Image.asset(
                  'assets/pass.png',
                ),
              ),

              // fieldbox utk otp
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.349),
                      offset: Offset(0, 3),
                      blurRadius: 3.5,
                    )
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0),
                  child: TextField(),
                ),
                // child: Container(
                //   padding: const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                // )
              ),

              // button selesai
              Container(
                width: 320,
                padding: const EdgeInsets.fromLTRB(0.0, 165.0, 0.0, 0.0),
                child: OutlinedButton(
                  onPressed: () {
                    _navToProfile(context);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 180, 84, 82),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: Text(
                    "Selesai",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
            // ),
          ),
        ),
      ),
    );
  }

  // fungsi navigasi button
  void _navToProfile(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ProfilePage()));
  }
}
