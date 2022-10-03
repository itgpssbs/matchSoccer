import 'package:flutter/material.dart';
import 'package:matchsoccer/model/match_team.dart';
import 'match_detail.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Matchlist extends StatelessWidget{
  static const routeName = '/match_list';
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
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 8.0),
                              Image.asset(matchteam.logo1),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 8.0),
                              Image.asset(matchteam.logo2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 27.0),
                              Text(matchteam.team1),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 27.0),
                              Text(matchteam.team2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 27.0),
                              Text(matchteam.score1.toString()),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 27.0),
                              Text(matchteam.score2.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            DateFormat.yMMMEd().format(
                                DateFormat('dd-MM-yyyy h:mm:ssa', 'id_ID').parseLoose(matchteam.schedule)
                            )
                            ,style: const TextStyle(
                              fontSize: 10.0
                            ),
                          ),
                          // Icon(Icons.favorite_border, color: Colors.red),
                          const FavoriteButton(),
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

class FavoriteButton extends StatefulWidget{
  // const FavoriteButton({Key :key}):super(key:key);
  const FavoriteButton({Key? key}): super(key:key);

  @override
  // FavoriteButtonState createState()=> _FavoriteButtonState();
  _FavoriteButtonState createState()=> _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFave=false;
  @override
  Widget build (BuildContext context){
    //TODO : implement build
    return IconButton(
      icon: Icon(
          isFave ? Icons.favorite:Icons.favorite_border,
          color: Colors.red
      ),
      onPressed: (){
        setState((){
          isFave = !isFave;
        });
      },
    );
  }
}