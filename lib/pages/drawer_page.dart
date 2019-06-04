import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            currentAccountPicture: null,
            decoration: BoxDecoration(
              image: DecorationImage(image:  AssetImage('images/bg_account_switcher.png'),fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text('首页',style: TextStyle(color: Colors.blue[600]),),
            leading: Icon(Icons.home,color: Colors.blue[600],),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('翻译收藏夹'),
            leading: Icon(Icons.favorite),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('离线翻译'),
            leading: Icon(Icons.offline_bolt),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('设置'),
            leading: Icon(Icons.settings),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
