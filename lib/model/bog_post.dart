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
