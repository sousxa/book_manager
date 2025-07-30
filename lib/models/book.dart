class Book {
  //Aributos do livro
  final String title;
  final List<String> authors;
  final String publishedDate;

  //Contrutor
  Book({
    required this.title,
    required this.authors,
    required this.publishedDate,
  });

  //Converte JSON para objeto Book
  factory Book.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] ?? {};

    return Book(
      title: volumeInfo['title'] ?? 'Sem titulo',
      authors: List<String>.from(
        volumeInfo['authors'] ?? ['Autor desconhecido'],
      ),
      publishedDate: volumeInfo['publishedDate'] ?? 'Sem data',
    );
  }

  //Converte objeto Book para JSON
  Map<String, dynamic> toJson() {
    return {'title': title, 'authors': authors, 'publishedDate': publishedDate};
  }

  //Representação em string do objeto Book
  @override
  String toString() {
    return 'Book(title: $title, authors: $authors, publishedDate: $publishedDate)';
  }
}
