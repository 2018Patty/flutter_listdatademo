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
    Book(
        name: 'Flutter is easy',
        author: 'Pattaraporn',
        cover:
            'https://data-flair.training/blogs/wp-content/uploads/sites/2/2018/08/lrg-1.jpg'),
    Book(
      author: 'Micheal',
      name: 'HTML and CSS',
      cover:
          'https://iotvnaw69daj.i.optimole.com/cb:n2y9~6666f/w:325/h:486/q:mauto/dpr:2.0/f:avif/https://www.codeinwp.com/wp-content/uploads/2021/04/HTML-and-CSS-Duckett-cover.jpg',
    ),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover:
          'https://lh4.googleusercontent.com/E6X6IODHtiTQrNl1-4ir12t4xw-PZKCNsnJPWa2-q3gsStWcjI7gDrT-k3GG7SkA7GqKBV3z8p1DHSHaz9gsI2UTAdsAMXRKx7EAmozrruuB1qblMtC6VJvDHyWnbwXPUvXOHhxkhRWyVE160lKb5ypivvHus6GsRC31hRW4Wo2x4A4ccGEThd84jQ',
    ),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover:
          'https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4842-3939-1?as=webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Data'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: books
                  .map((book) => BookCard(
                        book: book,
                        delete: () {
                          setState(() {
                            books.remove(book);
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
