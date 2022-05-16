import 'package:intl/intl.dart';

class BlogPost {
  final String title;
  final DateTime publishedDate;
  final String body;

  String get date => DateFormat('d MMMM y').format(publishedDate);

  BlogPost({
    required this.title,
    required this.publishedDate,
    required this.body,
  });
}

final blogPosts = [
  BlogPost(
    title: 'What is Peace?',
    publishedDate: DateTime(2022, 5, 2),
    body: 'A wrapper around our mental state that gives us stability.',
  ),
  BlogPost(
    title: 'How to get Peace?',
    publishedDate: DateTime(2022, 4, 3),
    body: 'We need to avoid greed and be content with what we\'ve got.',
  ),
];
