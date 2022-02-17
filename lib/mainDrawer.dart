import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          addAutomaticKeepAlives: true,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.blue,
              ),
              child: Text(
                'Header'
              ),
            ),
            ListTile(
              title: const Text('New Sale'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Inventory'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Accounts'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Transactions'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: (){

              },
            ),


          ],
        ),
      );
  }
}