import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDark = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ayarlar"),
          backgroundColor: _isDark ? Colors.grey : Colors.yellow,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView(
              children: [
                _SingleSection(
                  title: "Genel",
                  children: [
                    _CustomListTile(
                      title: "Koyu Mod",
                      icon: Icons.dark_mode_outlined,
                      trailing: Switch(
                        value: _isDark,
                        onChanged: (value) {
                          setState(() {
                            _isDark = value;
                          });
                        },
                      ),
                    ),
                    _CustomListTile(
                      title: "Bildirimler",
                      icon: Icons.notifications_none_rounded,
                      trailing: Switch(
                        value: _notificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            _notificationsEnabled = value;
                          });
                        },
                      ),
                    ),
                    const _CustomListTile(
                      title: "Güvenlik Durumu",
                      icon: Icons.lock,
                    ),
                  ],
                ),
                const Divider(),
                _SingleSection(
                  title: "İletişim",
                  children: [
                    _CustomListTile(
                      title: "Profiliniz",
                      icon: Icons.person_outline_rounded,
                    ),
                    _CustomListTile(
                      title: "Bize E-Posta Gönderin",
                      icon: Icons.message_outlined,
                      onTap: () {
                        _launchURL('mailto:sahibinden@example.com');
                      },
                    ),
                    _CustomListTile(
                      title: "Bizi Arayın",
                      icon: Icons.phone_outlined,
                      onTap: () {
                        _launchURL('tel:+1234567890');
                      },
                    ),
                    _CustomListTile(
                      title: "Sahibinden'e Davet Edin",
                      icon: Icons.contacts_outlined,
                    ),
                    _CustomListTile(
                      title: "Takvim",
                      icon: Icons.calendar_today_rounded,
                    ),
                  ],
                ),
                const Divider(),
                _SingleSection(
                  children: [
                    _CustomListTile(
                      title: "Yardım & Geribildirim",
                      icon: Icons.help_outline_rounded,
                    ),
                    _CustomListTile(
                      title: "Geliştirici Ekibi Hakkında",
                      icon: Icons.info_outline_rounded,
                      onTap: () {
                        _launchURL('https://github.com/doganakbaba');
                      },
                    ),
                    _CustomListTile(
                      title: "Çıkış Yap",
                      icon: Icons.exit_to_app_rounded,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;

  const _CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const _SingleSection({
    Key? key,
    this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ...children,
      ],
    );
  }
}
