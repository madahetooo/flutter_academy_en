import 'package:flutter/material.dart';

class GridImagesWidget extends StatefulWidget {
  const GridImagesWidget({Key? key}) : super(key: key);

  @override
  State<GridImagesWidget> createState() => _GridImagesWidgetState();
}

class _GridImagesWidgetState extends State<GridImagesWidget> {
  List<String> images = [
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://yt3.ggpht.com/ytc/AMLnZu930URwcvUy-dEtT3MvgE9EgYl2beQ9qZ3ZSLiw=s900-c-k-c0x00ffffff-no-rj",
    "https://miro.medium.com/max/1200/1*EAav5LG1KCz3wKxyxqwbVA.jpeg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8.jpg",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://yt3.ggpht.com/ytc/AMLnZu930URwcvUy-dEtT3MvgE9EgYl2beQ9qZ3ZSLiw=s900-c-k-c0x00ffffff-no-rj",
    "https://miro.medium.com/max/1200/1*EAav5LG1KCz3wKxyxqwbVA.jpeg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8.jpg",
    "https://miro.medium.com/max/1200/1*EAav5LG1KCz3wKxyxqwbVA.jpeg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8.jpg",
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://yt3.ggpht.com/ytc/AMLnZu930URwcvUy-dEtT3MvgE9EgYl2beQ9qZ3ZSLiw=s900-c-k-c0x00ffffff-no-rj",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Images"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index){
              return Image.network(images[index]);
            }),
      ),
    );
  }
}
