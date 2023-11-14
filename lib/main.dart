import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: 'https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_1280.jpg',
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/flowers.avif',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Image.network(
                'https://cdn.pixabay.com/photo/2016/11/12/11/51/animals-1818690_1280.jpg',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              const Text('Natures'),
            ],
          ),
        ),
      ),
    );
  }
}
