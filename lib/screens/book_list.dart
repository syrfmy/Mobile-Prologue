import 'package:flutter/material.dart';
import 'package:prologue/widgets/book.dart';
import 'package:prologue/widgets/left_drawer.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'List Buku',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookWidget(book: books[index]);
        },
      ),
    );
  }
}

class BookWidget extends StatelessWidget {
  final Book book;

  const BookWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(book.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Penulis Buku: ${book.author}"),
            SizedBox(height: 4.0),
            Text("Deskripsi Buku: ${book.description}"), // Added description
          ],
        ),
        onTap: () {
          // Handle book tap
        },
      ),
    );
  }
}
