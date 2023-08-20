import 'dart:typed_data';

import 'package:conning_tower/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:share_plus/share_plus.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  PhotoGalleryState createState() => PhotoGalleryState();
}

class PhotoGalleryState extends State<PhotoGallery> {
  List<AssetEntity> images = [];
  List<Uint8List> bytes = [];

  @override
  void initState() {
    super.initState();
    _fetchImages();
  }

  Future<void> _fetchImages() async {
    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
    for (var album in albums) {
      List<AssetEntity> albumImages =
          await album.getAssetListRange(start: 0, end: 5);
      images.addAll(albumImages);
    }
    bytes = await _fetchBytes();
    setState(() {});
  }

  Future<List<Uint8List>> _fetchBytes() async {
    List<Uint8List> bytes = [];
    for (var image in images) {
      var b = await image.thumbnailDataWithSize(ThumbnailSize(800, 480));
      bytes.add(b!);
    }
    return bytes;
  }

  void _shareImage(Uint8List image, BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    if (image.isNotEmpty) {
      await Share.shareXFiles([
        XFile.fromData(
          image,
          mimeType: 'image/png',
        )
      ], sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (bytes.isNotEmpty) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(children: [
                Image.memory(
                  bytes[index],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () async {
                          _shareImage(
                              await images[index].originBytes as Uint8List,
                              context);
                        },
                        child: Container(
                            width: 50,
                            height: 50,
                            color: CupertinoDynamicColor.resolve(
                                CupertinoColors.systemGroupedBackground,
                                context),
                            child: Icon(CupertinoIcons.share)),
                      );
                    }),
                  ),
                ),
              ]),
            ),
          );
        },
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(
              radius: 30,
            ),
            Text(S.of(context).PhotoAlbumPermissionReminder),
          ],
        ),
      );
    }
  }
}
