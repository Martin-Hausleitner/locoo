import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nochba/logic/interfaces/IModel.dart';

class Post implements IModel {
  @override
  String id;
  final String user;
  final String title;
  final String description;
  final String imageUrl;
  final Timestamp createdAt;
  final String category;
  final List<String> tags;
  final int likes;

  Post(
      {this.id = '',
      required this.user,
      required this.title,
      required this.description,
      this.imageUrl = '',
      required this.createdAt,
      required this.category,
      required this.tags,
      required this.likes});

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user,
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
        'createdAt': createdAt,
        'category': category,
        'tags': tags,
        'likes': likes,
      };

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        user: json['user'],
        title: json['title'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        createdAt: json['createdAt'],
        category: json['category'],
        tags: List.castFrom<dynamic, String>(json[
            'tags']) /*tags: json['tags'] == null ? [] : json['tags'].map<String>((e) => e as String).toList()*/,
        likes: json['likes'] /*List.castFrom<dynamic, String>(json['liked'])*/,
      );
}
