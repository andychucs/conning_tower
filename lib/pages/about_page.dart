import 'package:conning_tower/constants.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/routes/functional_layer.dart';
import 'package:conning_tower/providers/generatable/device_provider.dart';
import 'package:conning_tower/widgets/icons.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:conning_tower/pages/libs_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({super.key});

  @override
  ConsumerState<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends ConsumerState<AboutPage> {
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
    Size size =
        ref.watch(deviceManagerProvider.select((manager) => manager.size));

    return SingleChildFunctionalPage(
      child: CupertinoScrollbar(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(S.current.AboutButton),
              backgroundColor: CupertinoColors.systemGroupedBackground,
              border: null,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  CupertinoListSection.insetGrouped(
                    footer: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(kReleaseChannel == ReleaseChannel.github
                          ? S.of(context).AboutDescriptionOpen
                          : S.of(context).AboutDescriptionStore),
                    ),
                    children: [
                      CupertinoListTile(
                        title: Text(S.of(context).AboutVersion),
                        additionalInfo: Text(
                            '${_packageInfo.version}(${_packageInfo.buildNumber})'),
                      ),
                      const CupertinoListTile(
                        title: Text("Channel"),
                        additionalInfo: Text(
                            kReleaseChannel == ReleaseChannel.github
                                ? "GitHub"
                                : "AppStore"),
                      )
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                    children: [
                      if (kReleaseChannel == ReleaseChannel.github)
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
                    children: const [
                      CupertinoListTile(
                        title: Text('AndyChu'),
                        leading: MemberIcon(
                            url:
                                'https://avatars.githubusercontent.com/u/24852023?v=4'),
                      ),
                      CupertinoListTile(
                        title: Text('Angus'),
                        leading: MemberIcon(
                            url:
                                'https://avatars.githubusercontent.com/u/91370281?v=4'),
                      ),
                      CupertinoListTile(
                        title: Text('naayu'),
                        leading: MemberIcon(
                            url:
                                'https://pbs.twimg.com/profile_images/1651315887540928512/tC6-eeXi_400x400.jpg'),
                      ),
                      CupertinoListTile(
                        title: Text('Hatsuzuki'),
                        subtitle: Text('Artist'),
                        leading: MemberIcon(
                            url:
                                'https://pbs.twimg.com/profile_images/1634965009456562176/FyVARtJC_400x400.jpg'),
                      ),
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                      header: const CupertinoListSectionDescription(
                        "Device Info:",
                      ),
                      children: [
                        CupertinoListTile(
                          title: const Text("Screen Size"),
                          additionalInfo:
                              Text("W:${size.width} H:${size.height}"),
                        ),
                        CupertinoListTile(
                          title: const Text("Device Type"),
                          additionalInfo: Text(deviceType.name),
                        ),
                      ]),
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
                              CupertinoPageScaffold(
                                  navigationBar: CupertinoNavigationBar(
                                    backgroundColor:
                                        CupertinoColors.systemGroupedBackground,
                                    middle: const Text('Libraries'),
                                    previousPageTitle:
                                        S.of(context).AboutButton,
                                  ),
                                  child: const LibsInfo())),
                        )
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
