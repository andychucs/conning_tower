import 'dart:io';

import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/pages/functional_layer.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/widgets/libs_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final InAppReview _inAppReview = InAppReview.instance;
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );
  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildFunctionalPage(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(S.current.AboutButton.replaceAll('\n', '')),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                CupertinoListSection.insetGrouped(
                  footer: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(kIsOpenSource
                        ? S.of(context).AboutDescriptionOpen
                        : S.of(context).AboutDescriptionStore),
                  ),
                  children: [
                    CupertinoListTile(
                      title: Text(S.of(context).AboutVersion),
                      additionalInfo: Text(
                          '${_packageInfo.version}(${_packageInfo.buildNumber})'),
                    )
                  ],
                ),
                CupertinoListSection.insetGrouped(
                  children: [
                    CupertinoListTile(
                      title: Text(S.of(context).AppStoreRating),
                      leading: const DummyIcon(
                          color: CupertinoColors.activeBlue,
                          icon: CupertinoIcons.heart),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () async {
                        if (await _inAppReview.isAvailable()) {
                          _inAppReview.requestReview();
                        }
                      },
                    ),
                    CupertinoListTile(
                      title: const Text("X"),
                      leading: const DummyIcon(
                          color: CupertinoColors.black,
                          icon: FontAwesomeIcons.xTwitter),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => launchUrl(Uri.parse(kXUrl)),
                    ),
                    if (kIsOpenSource)
                      CupertinoListTile(
                        title: const Text("GitHub"),
                        leading: const DummyIcon(
                            color: CupertinoColors.black,
                            icon: FontAwesomeIcons.github),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => launchUrl(Uri.parse(kGitHubOpenUrl)),
                      ),
                    CupertinoListTile(
                      title: const Text("Docs"),
                      leading: const DummyIcon(
                          color: CupertinoColors.activeOrange,
                          icon: CupertinoIcons.doc),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => launchUrl(Uri.parse(kDocsUrl)),
                    )
                  ],
                ),
                CupertinoListSection.insetGrouped(
                  header: Text(S.of(context).AboutContributors),
                  children: [
                    CupertinoListTile(
                      title: const Text('AndyChu'),
                      leading: kIsOpenSource
                          ? FadeInImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeInCurve: Curves.easeInExpo,
                              fadeOutCurve: Curves.easeOutExpo,
                              placeholder: const AssetImage(
                                  "assets/images/defaultAvatarImage.png"),
                              image: const NetworkImage(
                                  'https://avatars.githubusercontent.com/u/24852023?v=4'),
                              imageErrorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                    "assets/images/defaultAvatarImage.png");
                              },
                              fit: BoxFit.cover)
                          : null,
                    ),
                    CupertinoListTile(
                      title: const Text('Angus'),
                      leading: kIsOpenSource
                          ? FadeInImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeInCurve: Curves.easeInExpo,
                              fadeOutCurve: Curves.easeOutExpo,
                              placeholder: const AssetImage(
                                  "assets/images/defaultAvatarImage.png"),
                              image: const NetworkImage(
                                  'https://avatars.githubusercontent.com/u/91370281?v=4'),
                              imageErrorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                    "assets/images/defaultAvatarImage.png");
                              },
                              fit: BoxFit.cover)
                          : null,
                    ),
                    CupertinoListTile(
                      title: const Text('naayu'),
                      leading: kIsOpenSource
                          ? FadeInImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeInCurve: Curves.easeInExpo,
                              fadeOutCurve: Curves.easeOutExpo,
                              placeholder: const AssetImage(
                                  "assets/images/defaultAvatarImage.png"),
                              image: const NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1651315887540928512/tC6-eeXi_400x400.jpg'),
                              imageErrorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                    "assets/images/defaultAvatarImage.png");
                              },
                              fit: BoxFit.cover)
                          : null,
                    ),
                  ],
                ),
                CupertinoListSection.insetGrouped(
                    header: const CupertinoListSectionDescription(
                      "ConningTower makes use of the following libraries:",
                    ),
                    footer: const CupertinoListSectionDescription(
                        'For license requirements, packages from pub.dev will not be listed here.'),
                    children: [
                      CupertinoListTile(
                        title: const Text("Libraries"),
                        trailing: const CupertinoListTileChevron(),
                        onTap: () => navigatorToCupertino(
                            context,
                            SingleChildFunctionalPage(
                                child: CupertinoPageScaffold(
                                    navigationBar: CupertinoNavigationBar(
                                      middle: const Text('Libraries'),
                                      previousPageTitle:
                                          S.of(context).AboutButton,
                                    ),
                                    child: const LibsInfo()))),
                      )
                    ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
