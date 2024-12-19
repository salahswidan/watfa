import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../features/settings/logic/models/card_model.dart';
import '../routing/routes.dart';

List<CardModel> settingsCardList(BuildContext context) => [
      CardModel(
        title: 'Wallet',
        image: 'assets/images/Wallet.png',
        onTap: () {
          context.pushNamed(Routes.walletScreen);
        },
      ),
      CardModel(
        title: 'Payment Methods',
        image: 'assets/images/Bank Cards.png',
        onTap: () {},
      ),
      CardModel(
        title: 'Bank account',
        image: 'assets/images/Merchant Account.png',
        onTap: () {},
      ),
      CardModel(
        title: 'Saved items',
        image: 'assets/images/Bookmark.png',
        onTap: () {},
      ),
      CardModel(
        title: 'Notification',
        image: 'assets/images/Alarm.png',
        onTap: () {
          context.pushNamed(Routes.notificationsScreen);
        },
      ),
    ];
