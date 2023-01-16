import 'package:flutter/cupertino.dart';

class Book {
  const Book({
    required this.title,
    required this.author,
    required this.image,
    required this.categoria,
  });
  final String title;
  final String author;
  final String image;
  final String categoria;
}

final books = const [
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg',
      categoria: 'Ficcion'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg',
      categoria: 'Ficcion'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg',
      categoria: 'Ficcion'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg',
      categoria: 'Ficcion'),
  Book(
      title: 'poppy',
      author: 'poppy',
      image:
          'https://mir-s3-cdn-cf.behance.net/projects/404/358ab4123425767.Y3JvcCw0NzI4LDM2OTgsODE5LDkzNg.jpg',
      categoria: 'Ficcion'),
];
