class MatchDetail {
  String name;
  String broadcaster;
  int numEpisodes;
  String schedule;
  String poster;
  List<String> imageUrls;

  MatchDetail({
    required this.name,
    required this.broadcaster,
    required this.numEpisodes,
    required this.schedule,
    required this.poster,
    required this.imageUrls,
  });
}

var MatchDetailList = [
  MatchDetail(
      name: 'Monster Truck',
      broadcaster: 'Netflix',
      numEpisodes: 20,
      schedule: '20.00-21.00',
      poster: 'images/1.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
      ]),
  MatchDetail(
      name: 'Monster Truck',
      broadcaster: 'Netflix',
      numEpisodes: 20,
      schedule: '20.00-21.00',
      poster: 'images/2.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
      ]),
  MatchDetail(
      name: 'Monster Truck',
      broadcaster: 'Netflix',
      numEpisodes: 20,
      schedule: '20.00-21.00',
      poster: 'images/3.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHlksdJWoZVLzpINNNZ8K35qjBnR5I5kKEg&usqp=CAU'
      ])
];
