import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';
import 'package:listdatademo/bookcard.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<Book> books = [
    Book(name: 'Flutter is easy', author: 'Pattaraporn'),
    Book(author: 'Micheal', name: 'HTML and CSS'),
    Book(name: 'Data Science', author: 'Somchai'),
    Book(name: 'React Native', author: 'Peter'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Data'),
        ),
        body: Column(
          children: books.map((book) => BookCard(book: book)).toList(),
        ));
  }
}
