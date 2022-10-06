import 'package:flutter/material.dart';
import 'package:matchsoccer/model/match_team.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Matchdetail extends StatelessWidget {
  static const routeName = '/match_detail';
  final Matchteam matchteam;
  const Matchdetail({Key? key, required this.matchteam}): super(key:key);

  @override
  Widget build(BuildContext context){
    // TODO : implemend build
    initializeDateFormatting('id_ID', null);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Detail'),
      ),
      body: SafeArea (
        child: SingleChildScrollView(
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(matchteam.logo1),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          matchteam.team1,
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          matchteam.score1.toString(),
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.favorite_border, color: Colors.red,),
                        SizedBox(height: 8.0),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          matchteam.score2.toString(),
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          matchteam.team2,
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(matchteam.logo2),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:375,
                child:ListView(
                  scrollDirection: Axis.vertical,
                  children: matchteam.lineups.map((item){
                    return Padding(
                      padding: const EdgeInsets.all(0.0),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child:
                          Image.asset(item),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          DateFormat.yMMMEd().format(
                            DateFormat('dd-MM-yyyy h:mm:ssa', 'id_ID').parseLoose(matchteam.schedule)
                          ),
                          style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                            matchteam.venue,
                            style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
