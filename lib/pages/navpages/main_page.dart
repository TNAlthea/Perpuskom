import 'package:flutter/material.dart';
import 'genre_page.dart';
import 'home_page.dart';
import 'member_page.dart';
import 'profile_page.dart';
import '../BookList_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    GenrePage(),
    MemberPage(),
    ProfilePage(),
    BookListPage()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            elevation: 10,
            items: [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(Icons.home_rounded)),
              BottomNavigationBarItem(
                  label: 'Genre', icon: Icon(Icons.menu_book_rounded)),
              BottomNavigationBarItem(
                  label: 'Member', icon: Icon(Icons.card_membership_rounded)),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person_rounded)),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'booklist')
            ],
          ),
        ),
      ),
    );
  }
}
