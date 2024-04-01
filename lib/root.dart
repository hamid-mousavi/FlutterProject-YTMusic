import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/HomeScreen.dart';

const int homeIndex = 0;
const int sampleIndex = 1;
const int libraryIndex = 2;
const int albumeIndex = 2;

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedScreenIndex = homeIndex;
  final List<int> _history = [];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _sampleKey = GlobalKey();
  final GlobalKey<NavigatorState> _libraryKey = GlobalKey();
  final GlobalKey<NavigatorState> _albumKey = GlobalKey();

  late final map = {
    homeIndex: _homeKey,
    sampleIndex: _sampleKey,
    libraryIndex: _libraryKey,
    albumeIndex: _libraryKey,
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTabNavigatorState =
        map[selectedScreenIndex]!.currentState!;
    if (currentSelectedTabNavigatorState.canPop()) {
      currentSelectedTabNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: WillPopScope(
          onWillPop: _onWillPop,
          child: Scaffold(
            body: IndexedStack(
              index: selectedScreenIndex,
              children: [
                _navigator(_homeKey, homeIndex, HomeScreen()),
                _navigator(
                  _sampleKey,
                  sampleIndex,
                  const Text('نمونه ها'),
                ),
                _navigator(_libraryKey, libraryIndex, const Text('کتابخانه')),
                _navigator(_albumKey, albumeIndex, const Text('آلبوم')),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'خانه'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cart), label: 'نمونه ها'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person), label: 'کتابخانه'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person), label: 'آلبوم'),
              ],
              currentIndex: selectedScreenIndex,
              onTap: (selectedIndex) {
                setState(() {
                  _history.remove(selectedScreenIndex);
                  _history.add(selectedScreenIndex);
                  selectedScreenIndex = selectedIndex;
                });
              },
            ),
          )),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState == null && selectedScreenIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => Offstage(
                    offstage: selectedScreenIndex != index, child: child)));
  }
}
