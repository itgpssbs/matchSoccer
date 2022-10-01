import 'package:flutter/material.dart';
import 'package:matchsoccer/model/match_team.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Matchdetail extends StatelessWidget {
  final Matchteam matchteam;
  // const Matchdetail({Key? key}): super(key:key);
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
                        Text(matchteam.team1),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(matchteam.score1.toString()),

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
                        Text(matchteam.score2.toString()),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(matchteam.team2),
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
              // Container(
              //   margin: const EdgeInsets.only(top: 16.0),
              //   child://Image.network(url),
              //     Image.asset(matchteam.lineup),

                // child: const Text(
                //   "Kisah berawal dari perusahaan minyak dan gas Terravex yang tengah melakukan proyek pengeboran di wilayah Amerika Serikat. Proyek pengeboran ini sayangnya membuat kehidupan bawah tanah terancam. Ini termasuk ancaman terhadap makhluk monster bawah tanah, dan menyebabkan tiga monster bawah tanah keluar dari habitatnya.",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 16.0,
                //   ),
                // ),
              // ),
              SizedBox(
                height:400,
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
                          // matchteam.schedule,
                          style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold
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
                        Text(matchteam.venue),
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