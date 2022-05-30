import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postUrl;
  final String username;
  final String postId;
  final datePublished;
  final profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.postUrl,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "postUrl": postUrl,
        "postId": postId,
        "datePublished": datePublished,
        "profImage": profImage,
        "likes": likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
      datePublished: snapshot['datePublished'],
      postId: snapshot['postId'],
      description: snapshot['description'],
      likes: snapshot['likes'],
    );
  }
}
