import 'package:challenge_shoes/pages/home/home.page.dart';
import 'package:challenge_shoes/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage() : super();

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _selectindex = 0;

  void _tabIndex(int index) => setState(() => _selectindex = index);

  List<Widget> screems = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screems[_selectindex],
      bottomNavigationBar: ClipRRect(
  
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppTheme.kblack,
          selectedItemColor: AppTheme.kpurple,
          unselectedItemColor: Colors.white54,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/home.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 0 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/svgs/home.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/favorite.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 1 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/svgs/favorite.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/layers.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 2 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/svgs/layers.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/user.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 3 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/svgs/user.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            )
          ],
          currentIndex: _selectindex,
          onTap: _tabIndex,
        ),
      ),
    );
  }
}
