import 'package:flutter/material.dart';
import 'package:flutter_application_wahyu/about.dart';

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Regina Tatang"),
            accountEmail: Text("Regina.tatang@undiksha.ac.id"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQHn70r8BHk-pg/profile-displayphoto-shrink_200_200/0/1597147556027?e=1620864000&v=beta&t=6AsZDEblUeZpW0CY-6Gw4MtQF_r9lEi6RdeWXWygqHs')),
            ),
            decoration: BoxDecoration(
                color: Colors.black), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            title: Text("Profile"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Log Out"),
            trailing: Icon(Icons.logout),
          ),
          ListTile(
            onTap: () {},
            title: Text("Pengaturan"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Aboutapp()));
            },
            title: Text("About us"),
            trailing: Icon(Icons.info),
          )
        ],
      ),
    );
  }
}
