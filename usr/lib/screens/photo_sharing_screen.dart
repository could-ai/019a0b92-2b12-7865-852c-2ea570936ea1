import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';


class PhotoSharingScreen extends StatelessWidget {
  const PhotoSharingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final photos = appState.photos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          final photo = photos[index];
          return GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(photo['caption']),
              subtitle: Text('by ${photo['uploader']} on ${DateFormat.yMMMd().format(photo['date'])}'),
            ),
            child: CachedNetworkImage(
              imageUrl: photo['url'],
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }
}
