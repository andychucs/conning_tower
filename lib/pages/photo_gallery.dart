import 'dart:typed_data';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/webview_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:share_plus/share_plus.dart';

class PhotoGallery extends ConsumerStatefulWidget {
  const PhotoGallery({super.key});

  @override
  PhotoGalleryState createState() => PhotoGalleryState();
}

class PhotoGalleryState extends ConsumerState<PhotoGallery> {
  List<AssetEntity> images = [];
  List<Uint8List> bytes = [];

  @override
  void initState() {
    super.initState();
    _fetchImages();
  }

  Future<void> _fetchImages() async {
    images.clear();
    bytes.clear();
    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(onlyAll: true);
    for (var album in albums) {
      // print(album);
      // print(album.darwinSubtype);
      // print(album.darwinType);
      // print(album.filterOption);
      // print(album.type);
      // print(album.isAll);
      // if (album.darwinSubtype != PMDarwinAssetCollectionSubtype.smartAlbumUserLibrary && Platform.isIOS) continue; //For iOS, only show the "Recents" album
      List<AssetEntity> albumImages =
          await album.getAssetListRange(start: 0, end: 5);
      images.addAll(albumImages);
    }
    bytes = await _fetchBytes();
    if (mounted)  setState(() {});
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
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageOverButton(
                  onTap: () async {
                    ref.read(webControllerProvider.notifier).saveScreenShot();
                    await _fetchImages();
                  }, child: const Icon(CupertinoIcons.camera_viewfinder),
                ),
                ImageOverButton(
                  onTap: () async {
                    await _fetchImages();
                  }, child: const Icon(CupertinoIcons.refresh),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
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
                                  width: 40,
                                  height: 40,
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
            ),
          ),
        ],
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(),
            CupertinoButton(
              onPressed: () async {
                await PhotoManager.openSetting();
                await _fetchImages();
              },
              child: Text(S.of(context).PhotoAlbumPermissionRequest),
            ),
            Text(S.of(context).PhotoAlbumPermissionReminder),
          ],
        ),
      );
    }
  }
}

class ImageOverButton extends StatelessWidget {
  const ImageOverButton({
    super.key, required this.onTap, required this.child,
  });

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GestureDetector(
          onTap: () async {
            onTap.call();
          },
          child: Container(
              width: 40,
              height: 40,
              color: CupertinoDynamicColor.resolve(
                  CupertinoColors.systemGroupedBackground,
                  context),
              child: child),
        ),
    );
  }
}
