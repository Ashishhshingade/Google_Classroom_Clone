import 'package:flutter/material.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            height: 300,
            child: DrawerHeader(

                child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Google Classroom',style: TextStyle(fontSize: 18,fontFamily: "Roboto"),),
                      const Divider(indent: 0,endIndent: 0,height: 20,color: Colors.grey, ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading:Icon(Icons.home),
                        title: Text('Classes'),
                        onTap: (){},),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading:Icon(Icons.calendar_today),
                        title: Text('Calender'),
                        onTap: (){},),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading:Icon(Icons.notifications_outlined),
                        title: Text('Notifications'),
                        onTap: (){},
                        trailing: Text('1'),
                      )
                    ]
                )
            ),
          ),

          ListTile(
            //contentPadding: EdgeInsets.all(0),
            leading: Icon(Icons.list),
            title: Text('To Do'),
            onTap: (){},
          )
        ],
      ) ,
    );
  }
}
