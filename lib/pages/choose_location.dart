import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class chooseLocation extends StatefulWidget {
  @override
  _chooseLocationState createState() => _chooseLocationState();
}

class _chooseLocationState extends State<chooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'Africa/Accra', location: 'Accra', flag: 'gh.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'nig.png'),
  ];

  void updateTime(index) async{
WorldTime instance = locations[index];
await instance.getTime();
//navigate to the homescreen
  Navigator.pop(context, {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'isDayTime': instance.isDayTime,
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Vx.green500,
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("choose a location"),
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child:ListTile(onTap: (){
                  updateTime(index);

                },
                title: Text(locations[index].location),
                 leading: CircleAvatar(
                   backgroundImage: AssetImage('assets/${locations[index].flag}'),
                 ),
                )
              ),
            );
          }

      )
    );
  }
}
