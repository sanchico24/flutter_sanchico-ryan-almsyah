import 'package:flutter/material.dart';

class Post {
  String image;
  String publishAt;
  Color color;
  String caption;

  Post(
      {this.image = '',
      this.publishAt = '',
      this.color = Colors.white,
      this.caption = ''});

  @override
  String toString() {
    return 'Post($image, $publishAt, $color, $caption)';
  }
}
