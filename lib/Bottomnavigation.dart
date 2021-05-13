import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Account.dart';
import 'package:vehical_maintenance/Add%20vehicle.dart';
import 'package:vehical_maintenance/Mainpage.dart';
import 'package:vehical_maintenance/viewall.dart';



class Bottombar extends StatefulWidget {
  Bottombar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(255,255,255,1) ,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon:_currentTabIndex==0? new  SvgPicture.asset('assets/images/set.svg'):
            new SvgPicture.asset('assets/images/seting.svg'),
            title: new Text("Services",
                style: new TextStyle(
                  // color: const Color(0xFF06244e),
                  fontSize: 12,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,))),
        BottomNavigationBarItem(
          icon:_currentTabIndex==1? new  SvgPicture.asset('assets/images/Group184.svg'):
          new SvgPicture.asset('assets/images/sos1.svg'),
          title: Text("Emergency",
              style: new TextStyle(
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,)
          ),
        ),
        BottomNavigationBarItem(
          icon:_currentTabIndex==2? new  SvgPicture.asset('assets/images/Group7.svg'):
          Container(
            height: 25,
              child: new SvgPicture.asset('assets/images/Frame1.svg')),
          title: Text("Vehicles",
              style: new TextStyle(
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,)),
        ),
        BottomNavigationBarItem(
          icon:_currentTabIndex==3? new  SvgPicture.asset('assets/images/Vectorr.svg'):
          new SvgPicture.asset('assets/images/account.svg'),
          title: Text("Account",
              style: new TextStyle(
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,)),
        ),
      ],
      onTap: _onTap,
      currentIndex: _currentTabIndex,
      selectedItemColor: Color.fromRGBO(0, 114, 255, 1)
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState.pushReplacementNamed("Mainpage");
        break;
      case 1:
        _navigatorKey.currentState.pushReplacementNamed("Viewall");
        break;
      case 2:
        _navigatorKey.currentState.pushReplacementNamed("addvehicle");
        break;
      case 3:
        _navigatorKey.currentState.pushReplacementNamed("Account");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Viewall":
        return MaterialPageRoute(builder: (context) => Viewall());
      case "addvehicle":
        return MaterialPageRoute(builder: (context) => addvehicle());
      case "Account":
        return MaterialPageRoute(builder: (context) => Account());
      default:
        return MaterialPageRoute(builder: (context) => MainPage());
    }
  }
}
