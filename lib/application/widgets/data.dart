import 'package:flutter/cupertino.dart';

class Book {
  const Book({
    required this.title,
    required this.author,
    required this.image,
  });
  final String title;
  final String author;
  final String image;
}

final books = const [
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg'),
];
