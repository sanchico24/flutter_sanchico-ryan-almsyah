import 'package:flutter/material.dart';

class GallerySheet extends StatelessWidget {
  final String image;
  const GallerySheet({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 3.5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 214, 214, 214),
                  border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214)),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const Text(
              'Image you click',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Image.network(image),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Dismiss')),
            )
          ],
        ));
  }
}
