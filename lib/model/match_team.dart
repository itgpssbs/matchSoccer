import 'package:flutter/material.dart';

class Matchteam {
  String venue;
  int id;
  String schedule;
  List<String> lineups;
  List<String> imageUrls;

  String team1;
  String team2;
  int score1;
  int score2;
  String logo1;
  String logo2;

  Matchteam({
    required this.venue,
    required this.id,
    required this.schedule,
    required this.lineups,
    required this.imageUrls,
    required this.team1,
    required this.team2,
    required this.score1,
    required this.score2,
    required this.logo1,
    required this.logo2,
  });
}
var matchteamList = [
  Matchteam(
    venue: 'Stadion Anfield',
    id: 1,
    schedule: '01-10-2022 2:00:00AM',
    lineups: [
      'images/lineups.png',
      'images/subs.png'
    ],
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
    ],
    team1: 'Liverpool',
    team2: 'Arsenal',
    score1: 1,
    score2: 2,
    logo1: 'images/liv.png',
    logo2: 'images/arsenal.png',
  ),
  Matchteam(
    venue: 'Stadion Emirates',
    id: 2,
    schedule: '01-10-2022 2:00:00AM',
    lineups: [
      'images/lineups.png',
      'images/subs.png'
    ],
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
    ],
    team1: 'Manchester City',
    team2: 'Liverpool',
    score1: 1,
    score2: 2,
    logo1: 'images/mancity.png',
    logo2: 'images/liv.png',
  ),
  Matchteam(
    venue: 'Stadion Olimpiade London',
    id: 3,
    schedule: '01-10-2022 2:00:00AM',
    lineups: [
      'images/lineups.png',
      'images/subs.png'
    ],
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
    ],
    team1: 'Liverpool',
    team2: 'Westham',
    score1: 1,
    score2: 2,
    logo1: 'images/liv.png',
    logo2: 'images/westham.png',
  )
];
