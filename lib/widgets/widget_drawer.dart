import 'package:flutter/material.dart';
import 'package:up_003_mealsapp/screen/screen_filter.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Widget buildContainer(Widget listTile, Color containerColor) {
      return Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(color: Colors.black, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: listTile,
      );
    }

    Widget buildListTile(String tileTitle, IconData tileIcon, Function tileFunction) {
      return ListTile(
        onTap: tileFunction,
        leading: Icon(
          tileIcon,
          size: 20,
        ),
        title: Text(
          tileTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
    }

    return Drawer(
      backgroundColor: Colors.transparent,
      //Container as bg transparent
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: Colors.black, width: 2),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.87,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                border: Border.all(color: Colors.black, width: 1),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  buildContainer(
                    Text(
                      'Drawer',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Theme.of(context).primaryColor.withOpacity(0.8),
                  ),
                  buildContainer(
                    Column(
                      children: [
                        buildContainer(
                          buildListTile('Meal', Icons.restaurant_rounded,() {
                            Navigator.of(context).pushReplacementNamed('home');
                          }),
                          Colors.white,
                        ),
                        buildContainer(
                          buildListTile('Filters', Icons.filter_list_rounded,() {
                            Navigator.of(context).pushNamed(FiltersScreen.routeName);
                          }),
                          Colors.white,
                        ),
                        // buildContainer(
                        //   buildListTile('Settings', Icons.settings,() {}),
                        //   Colors.white,
                        // ),
                        // buildContainer(
                        //   buildListTile('Settings', Icons.settings),
                        // ),
                      ],
                    ),
                    Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
