import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterdrawer/new_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
          ? Colors.grey : null
      ),
      home: HomePage(),
      //routes: <String,WidgetBuilder>{
       // "/a" : (BuildContext context) => NewPage("New Page"),
      //}

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRAWER APP"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text("Parth"),
                    accountEmail: Text("actuallydt007@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.purple : Colors.white,
                    child: Text("P"),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.purple : Colors.white,
                      child: Text("a"),)
                  ],
                ),
                ListTile(
                  title: Text("Page One"),
                  trailing: Icon(Icons.arrow_upward),
                  onTap:(){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
                    => NewPage("Page One")));
                  }),
                ListTile(
                  title: Text("Page Two"),
                  trailing: Icon(Icons.arrow_downward),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
                    => NewPage("Page Two")));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("Close"),
                  trailing: Icon(Icons.close),
                  onTap: ()=>
                    Navigator.of(context).pop(),
                )
              ],
            ),
          ),
          body: Container(
        child: Center(
        child: Text("Home Page"),
    ),
    ),
    );
  }
}
