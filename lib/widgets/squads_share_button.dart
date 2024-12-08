import 'dart:convert';
import 'dart:developer';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/data/kancolle_calc_net/deck_builder_entity.dart';
import 'package:conning_tower/models/feature/kancolle/equipment.dart';
import 'package:conning_tower/models/feature/kancolle/squad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/feature/kancolle/ship.dart';
import '../utils/toast.dart';

class SquadsShareButton extends StatelessWidget {
  const SquadsShareButton.cupertinoListTile({
    super.key,
    required this.squads,
    this.equipments,
    this.ships,
  }) : child = 'cupertinoListTile';

  const SquadsShareButton.iconButton({
    super.key,
    required this.squads,
    this.equipments,
    this.ships,
  }) : child = 'iconButton';

  final List<Squad> squads;
  final List<Equipment>? equipments;
  final List<Ship>? ships;
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
            Toast.showSuccess(title: S.current.TextCopyToClipboardSuccess);
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
              late Uri uri;
              if (equipments != null && ships != null) {
                // https://noro6.github.io/kc-web#import:{"predeck":{...},"ships":[{"api_ship_id":1,"api_lv":1,"api_kyouka":[0,0,0,0,0,0,0],"api_exp":[0,100,0],"api_slot_ex":0,"api_sally_area":0}],"items":[{"api_slotitem_id":1,"api_level":10}]}
                uri = Uri(
                  scheme: 'https',
                  host: 'noro6.github.io',
                  path: 'kc-web',
                  fragment: "import:${jsonEncode({
                        'predeck': DeckBuilderEntity.fromSuads(squads),
                        'ships': [for (var ship in ships!) ship.toNoro6Data()],
                        'items': [
                          for (var equipment in equipments!)
                            equipment.toNoro6Data()
                        ],
                      })}",
                );
                log(uri.toString());
              } else {
                // https://noro6.github.io/kc-web?predeck={"version":4,"hqlv":120,"f1":{"s1":...},"f2":{"s1":...},"f3":{"s1":...}}
                uri = Uri(
                    scheme: 'https',
                    host: 'noro6.github.io',
                    path: 'kc-web',
                    queryParameters: {
                      'predeck': jsonEncode(DeckBuilderEntity.fromSuads(squads))
                    });
              }
              launchUrl(uri, mode: LaunchMode.externalApplication);
            }),
        PullDownMenuItem(
          title: S.current.TextCopyToClipboard,
          subtitle: S.current.TextDeckBuilderFormat,
          icon: CupertinoIcons.square_on_square,
          onTap: () async {
            var deckBuilderFormat =
                jsonEncode(DeckBuilderEntity.fromSuads(squads));
            await Clipboard.setData(ClipboardData(text: deckBuilderFormat));
            Toast.showSuccess(title: S.current.TextCopyToClipboardSuccess);
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
