import 'package:flutter/material.dart';
import 'package:matchsoccer/model/match_team.dart';
import 'match_detail.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Matchlist extends StatelessWidget{
  const Matchlist({Key ? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO : implemend build
    initializeDateFormatting('id_ID', null);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Match'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Matchteam matchteam = matchteamList[index];
          return InkWell(
            onTap: (){
              // apps tumpuk2 / stack
              // MaterialPageRoute: routing ke halaman lain
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Matchdetail(matchteam:matchteam);
              }));
            },
            child:Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:1,
                    // child:Image.asset('images/1.jpg'),
                    // child:Image.asset(matchteam.logo1),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Text(matchteam.name,style: const TextStyle(fontSize: 16.0),),
                          // const SizedBox(height: 10,),
                          // Text(matchteam.broadcaster),
                          Column(
                            children: <Widget>[
                              // Icon(Icons.calendar_today),
                              SizedBox(height: 8.0),
                              Image.asset(matchteam.logo1),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              // Icon(Icons.timeline),
                              SizedBox(height: 8.0),
                              // Text(matchteam.schedule),
                              Image.asset(matchteam.logo2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    // child:Image.asset('images/1.jpg'),
                    // child:Image.asset(matchteam.logo1),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Text(matchteam.name,style: const TextStyle(fontSize: 16.0),),
                          // const SizedBox(height: 10,),
                          // Text(matchteam.broadcaster),

                          Column(
                            children: <Widget>[
                              // Icon(Icons.calendar_today),
                              SizedBox(height: 27.0),
                              Text(matchteam.team1),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              // Icon(Icons.timeline),
                              SizedBox(height: 27.0),
                              // Text(matchteam.schedule),
                              Text(matchteam.team2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    // child:Image.asset('images/1.jpg'),
                    // child:Image.asset(matchteam.logo1),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Text(matchteam.name,style: const TextStyle(fontSize: 16.0),),
                          // const SizedBox(height: 10,),
                          // Text(matchteam.broadcaster),

                          Column(
                            children: <Widget>[
                              // Icon(Icons.calendar_today),
                              SizedBox(height: 27.0),
                              Text(matchteam.score1.toString()),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              // Icon(Icons.timeline),
                              SizedBox(height: 27.0),
                              // Text(matchteam.schedule),
                              Text(matchteam.score2.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    // child:Image.asset('images/1.jpg'),
                    // child:Image.asset(matchteam.logo1),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                DateFormat.yMMMEd().format(
                                    DateFormat('dd-MM-yyyy h:mm:ssa', 'id_ID').parseLoose(matchteam.schedule)
                                )
                                ,style: const TextStyle(
                                  fontSize: 10.0
                                ),
                              ),
                              // const SizedBox(height: 10,),
                              // Text(matchteam.broadcaster),
                              // Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   children: <Widget>[
                              Icon(Icons.favorite_border, color: Colors.red),
                                  // SizedBox(height: 54.0),
                                  // Text(matchteam.team1),
                                // ],
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: matchteamList.length,
      ),
    );
  }
}