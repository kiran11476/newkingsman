import 'package:flutter/material.dart';
import 'package:newkings/view/screens/settings/addresss.dart';
import 'package:newkings/view/screens/wishlist/wishlist.dart';
import 'package:settings_ui/settings_ui.dart';

import 'orders.dart';

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({Key? key}) : super(key: key);
  final bool = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: const Text('Account'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    onPressed: (context) => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => const ScreenOrders())),
                    leading: const Icon(Icons.list),
                    title: const Text('Orders'),
                    value: const Text('Your Orders'),
                  ),
                  // SettingsTile.navigation(
                  //   leading: const Icon(Icons.account_box_outlined),
                  //   title: const Text('Profile'),
                  //   value: const Text('profile'),
                  // ),
                  SettingsTile.navigation(
                    onPressed: (context) => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => const AddAddressPage())),
                    leading: const Icon(Icons.home),
                    title: const Text('Address'),
                    value: const Text('Address'),
                  ),
                  SettingsTile.navigation(
                    onPressed: (context) => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => const ScreenWish())),
                    leading: const Icon(Icons.favorite_border),
                    title: const Text('Wishlist'),
                    value: const Text('Wishlists'),
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('Common'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.language),
                    title: const Text('Language'),
                    value: const Text('English'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {},
                    initialValue: bool,
                    leading: const Icon(Icons.format_paint),
                    title: const Text('Enable custom theme'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.supervised_user_circle_outlined),
                    title: const Text('Chat with us'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.privacy_tip_outlined),
                    title: const Text('About'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('Log Out'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
