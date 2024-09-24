import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:const Text("Whatsapp"),
      bottom: const TabBar(tabs:
      [
        
        Tab(

          child: Icon(Icons.camera_alt),
        ),
        Tab(
          child:Text("Chats"),
         ),
        Tab(
          child:Text("Status"),
        ),
        Tab(
        child:Text("Calls"),
      ),

      ],
      ),

        actions:  [
          Icon(Icons.search),
          SizedBox(width: 10,),
        PopupMenuButton(
            icon: Icon(Icons.more_horiz_rounded),
            itemBuilder: (context)  =>
        [
          PopupMenuItem( child:
          Text('New Group'),
          ),
          PopupMenuItem( child:
          Text('Settings'),
          ),
          PopupMenuItem( child:
          Text('More Settings'),
          ),
          ]),
        // Icon(Icons.more_horiz_rounded),
          SizedBox(width: 10,),
        ],


      ),


      body:  TabBarView(children: [
        Text("Camera"),

        ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
return ListTile(

            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pinimg.com/originals/81/98/19/819819d5b42fb66280edd3426d401929.jpg"),
            ),
            title: Text("Hamad"),
            subtitle: Text('Hey how are you?'),
            trailing: Text("2:53 AM"),
          );
        }),

        ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return ListTile(

                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/originals/81/98/19/819819d5b42fb66280edd3426d401929.jpg"),
                ),
                title: Text("Hamad"),
                subtitle: Text(index/2==0? "New Status": "Seen"),
                trailing: Icon(index/2==0? Icons.add_alert: Icons.library_add_check_sharp),
              );
            }),
        ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return ListTile(

                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/originals/81/98/19/819819d5b42fb66280edd3426d401929.jpg"),
                ),
                title: Text("Hamad"),
                subtitle: Text(index/2==0? 'you have missed audio call': "Call time is 12:20s"),
                trailing: Icon(index/2==0? Icons.call: Icons.video_call ),
              );
            }),
      ]),
    ),);
  }
}
