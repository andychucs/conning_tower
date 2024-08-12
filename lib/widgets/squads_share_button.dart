import 'dart:convert';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/data/kancolle_calc_net/deck_builder_entity.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SquadsShareButton extends StatelessWidget {
  const SquadsShareButton.cupertinoListTile({
    super.key,
    required this.squads,
  }) : child = 'cupertinoListTile';

  const SquadsShareButton.iconButton({
    super.key,
    required this.squads,
  }) : child = 'iconButton';

  final List<Squad> squads;
  final String child;

  @override
  Widget build(BuildContext context) {
    return PullDownButton(
      useRootNavigator: true,
      itemBuilder: (context) => [
        PullDownMenuItem(
          title: S.current.TextCopyToClipboard,
          // subtitle: S.current.TextConningTowerFormat,
          icon: CupertinoIcons.square_on_square,
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: jsonEncode(squads)));
            Fluttertoast.showToast(msg: S.current.TextCopyToClipboardSuccess);
          },
        ),
        PullDownMenuItem(
          title: S.current.TextOpenInJervis,
          subtitle: 'jervis.vercel.app',
          icon: CupertinoIcons.square_arrow_up_on_square,
          onTap: () {
            Uri uri = Uri(
                scheme: 'https',
                host: 'jervis.vercel.app',
                queryParameters: {
                  'predeck': jsonEncode(DeckBuilderEntity.fromSuads(squads))
                });
            launchUrl(uri, mode: LaunchMode.externalApplication);
          },
        ),
        PullDownMenuItem(
          title: S.current.TextOpenInNoro6,
          subtitle: 'noro6.github.io/kc-web',
          icon: CupertinoIcons.square_arrow_up_on_square,
          onTap: () {
            Uri uri = Uri(
                scheme: 'https',
                host: 'noro6.github.io',
                path: 'kc-web',
                queryParameters: {
                  'predeck': jsonEncode(DeckBuilderEntity.fromSuads(squads))
                }
            );
            launchUrl(uri, mode: LaunchMode.externalApplication);
          }
        ),
        PullDownMenuItem(
          title: S.current.TextCopyToClipboard,
          subtitle: S.current.TextDeckBuilderFormat,
          icon: CupertinoIcons.square_on_square,
          onTap: () async {
            var deckBuilderFormat =
                jsonEncode(DeckBuilderEntity.fromSuads(squads));
            await Clipboard.setData(ClipboardData(text: deckBuilderFormat));
            Fluttertoast.showToast(msg: S.current.TextCopyToClipboardSuccess);
          },
        )
      ],
      buttonBuilder: (BuildContext context, Future<void> Function() showMenu) {
        if (child == 'cupertinoListTile') {
          return CupertinoListTile(
            title: Text(S.current.TextShare),
            onTap: showMenu,
            trailing: Icon(
              CupertinoIcons.share,
              size: CupertinoTheme.of(context).textTheme.textStyle.fontSize,
              color: CupertinoColors.systemGrey2.resolveFrom(context),
            ),
          );
        }
        if (child == 'iconButton') {
          return GestureDetector(
            onTap: showMenu,
            child: const Icon(CupertinoIcons.share),
          );
        }
        return Container();
      },
    );
  }
}
