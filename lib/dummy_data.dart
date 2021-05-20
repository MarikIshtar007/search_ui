import 'package:search_ui/models/trending_profile.dart';
import 'package:search_ui/models/trending_tag.dart';
import 'package:search_ui/models/vendor.dart';

List<TrendingTag> trendingTagDummyData = [
  TrendingTag(title: 'Make Up', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Dermatology', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Skin Care', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Fashion', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Photography', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Designing', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Eyes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Lips', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Legs', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Baking', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Hair Care', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Hair Color', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Dress', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Nails', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Shoes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Bags', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Make Up', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Dermatology', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Skin Care', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Fashion', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Photography', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Designing', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Eyes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Lips', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Legs', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Baking', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Hair Care', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Hair Color', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Dress', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Nails', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Shoes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Bags', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Nails', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Shoes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Bags', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Nails', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Shoes', url: 'rtyujhgfcvhj'),
  TrendingTag(title: 'Bags', url: 'rtyujhgfcvhj'),
];

Map<String, dynamic> topVendorsDummyData = {
  'data': [
    {
      'name': 'Andrew',
      'designation': 'Fashion Designer',
      'photoUrl': 'assets/images/andrew.jpg'
    },
    {
      'name': 'Angela',
      'designation': 'Hair Stylist',
      'photoUrl': 'assets/images/angela.jpeg',
    },
    {
      'name': 'Elizabeth',
      'designation': 'Photography',
      'photoUrl': 'assets/images/elizabeth.jpg',
    },
    {
      'name': 'Greg',
      'designation': 'Makeup Artist',
      'photoUrl': 'assets/images/greg.jpg',
    },
    {
      'name': 'Janice',
      'designation': 'Dermatology',
      'photoUrl': 'assets/images/janice.jpg',
    },
    {
      'name': 'Mitsuha',
      'designation': 'Yoga',
      'photoUrl': 'assets/images/mitsuha.jpg',
    },
    {
      'name': 'Robin',
      'designation': 'Bridal Makeup',
      'photoUrl': 'assets/images/robin.jpg',
    },
    {
      'name': 'Thomas',
      'designation': 'Makeup Artist',
      'photoUrl': 'assets/images/thomas.jpg',
    }
  ]
};

Map<String, dynamic> trendingProfileDummyData = {
  'data': [
    {
      'name': 'Andrew',
      'likes': 1456,
      'photoUrl': 'assets/images/andrew.jpg',
    },
    {
      'name': 'Thomas',
      'likes': 720,
      'photoUrl': 'assets/images/thomas.jpg',
    },
    {
      'name': 'Robin',
      'likes': 2456,
      'photoUrl': 'assets/images/robin.jpg',
    },
    {
      'name': 'Mitsuha',
      'likes': 12304,
      'photoUrl': 'assets/images/mitsuha.jpg',
    },
    {
      'name': 'Janice',
      'likes': 2772,
      'photoUrl': 'assets/images/janice.jpg',
    },
    {
      'name': 'Greg',
      'likes': 754,
      'photoUrl': 'assets/images/greg.jpg',
    },
    {
      'name': 'Elizabeth',
      'likes': 4321,
      'photoUrl': 'assets/images/elizabeth.jpg',
    },
    {
      'name': 'Angela',
      'likes': 3370,
      'photoUrl': 'assets/images/angela.jpeg',
    }
  ]
};

Map<String, dynamic> masterClassDummyData = {
  'data': [
    {
      'title': 'Live Course: How to learn the art of mehandi with a ...',
      'price': 200,
      'photoUrl': 'assets/images/bridal_makeup.png',
      'dates': '27th - 30th July',
      'timings': '14:30 - 15:30',
    },
    {
      'title': 'Art of Creating eyes that look magical for your next ...',
      'price': 200,
      'photoUrl': 'assets/images/bridal_makeup.png',
      'dates': '27th - 30th July',
      'timings': '14:30 - 15:30',
    },
    {
      'title': 'Live Course: How to learn the art of mehandi with ...',
      'price': 200,
      'photoUrl': 'assets/images/bridal_makeup.png',
      'dates': '27th - 30th July',
      'timings': '14:30 - 15:30',
    }
  ]
};
