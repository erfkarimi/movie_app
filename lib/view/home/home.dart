import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:movie_app/view/home/saved_page.dart';
import 'package:movie_app/view/home/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController pageController = PageController();

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
     duration: const Duration(milliseconds: 500),
     curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      bottomNavigationBar: bottomNavigationBar(),
      body: body(),
    );
  }

  BottomNavigationBar bottomNavigationBar(){
    return BottomNavigationBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: const IconThemeData(size: 27),
      currentIndex: _selectedIndex,
      items:  [
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.homeOutline,
          color: Colors.grey.shade500,),
          activeIcon: const Icon(MdiIcons.home,
          color: Colors.black,),
          label: "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline,
          color: Colors.grey.shade500,),
          activeIcon: const Icon(MdiIcons.bookmark,
          color: Colors.black,),
          label: "Save"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined,
          color: Colors.grey.shade500,),
          activeIcon: const Icon(Icons.settings,
          color: Colors.black,),
          label: "Settings"
          ),
      ],
      onTap: _onItemTapped,
        );
  }

  Widget body() {
    return PageView(
      controller: pageController,
      children: [ 
        Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 70),
            const ListTile(
              title: Text("Movies",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              subtitle: Text("Save your favorite movies"),
            ),
            const SizedBox(height: 30),
            TextField(
                cursorColor: Colors.black,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none)),
                    contentPadding: const EdgeInsets.all(14),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    hintText: "Search",
                    hintStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none
                            )
                          )
                        )
             )
          ],
        ),
      ),
      const SavedItems(),
      const Settings()
      ]
    );
  }
}
