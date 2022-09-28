import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picker17/post.dart';

class PreviewPostScreen extends StatelessWidget {
  final Post post;
  const PreviewPostScreen({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 200,
            child: Image.file(File(post.image)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(
                'Published: ${post.publishAt}',
                style: const TextStyle(color: Colors.grey),
              )),
              const Text(
                'Color : ',
                style: TextStyle(color: Colors.grey),
              ),
              CircleAvatar(
                backgroundColor: post.color,
                radius: 6,
              )
            ],
          ),
          const SizedBox(height: 20,),
          Text(post.caption, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
