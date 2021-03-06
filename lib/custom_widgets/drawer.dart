import 'package:flutter/material.dart';
import 'package:smart_health/custom_widgets/user_details_column.dart';
import 'package:smart_health/routing/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: UserDetailsColumn(),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home, size: 35.0),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(HomePageRoute);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.map, size: 35.0),
                  title: Text("Personal routes"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(PersonalRoutesPageRoute);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_pharmacy, size: 35.0),
                  title: Text("Pharmacies"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(PharmaciesPageRoute);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.wb_sunny, size: 35.0),
                  title: Text("Weather"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(WeatherPageRoute);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person_pin, size: 35.0),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(ProfilePageRoute);
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.description, size: 35.0),
                  title: Text("Records"),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(RecordsPageRoute);
                  },
                ),
                Divider()
              ],
            ),
          )
        ],
      ),
    );
  }
}
