// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Tale {
   final String id;
  final String title;
  final String imagePath;
  final int reads;
  final int likes;
  final String author;
  final String content;
  Tale({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.reads,
    required this.likes,
    required this.author,
    required this.content,
  });

  Tale copyWith({
    String? id,
    String? title,
    String? imagePath,
    int? reads,
    int? likes,
    String? author,
    String? content,
  }) {
    return Tale(
      id: id ?? this.id,
      title: title ?? this.title,
      imagePath: imagePath ?? this.imagePath,
      reads: reads ?? this.reads,
      likes: likes ?? this.likes,
      author: author ?? this.author,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imagePath': imagePath,
      'reads': reads,
      'likes': likes,
      'author': author,
      'content': content,
    };
  }

  factory Tale.fromMap(Map<String, dynamic> map) {
    return Tale(
      id: map['id'] as String,
      title: map['title'] as String,
      imagePath: map['imagePath'] as String,
      reads: map['reads'] as int,
      likes: map['likes'] as int,
      author: map['author'] as String,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tale.fromJson(String source) => Tale.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Tale(id: $id, title: $title, imagePath: $imagePath, reads: $reads, likes: $likes, author: $author, content: $content)';
  }

  @override
  bool operator ==(covariant Tale other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.imagePath == imagePath &&
      other.reads == reads &&
      other.likes == likes &&
      other.author == author &&
      other.content == content;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      imagePath.hashCode ^
      reads.hashCode ^
      likes.hashCode ^
      author.hashCode ^
      content.hashCode;
  }
}
