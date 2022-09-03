import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'ストレージ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SquareIconButton(
              icon: Icons.add,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: '検索',
                  contentPadding: EdgeInsets.only(top: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: height * 0.19,
                width: width * 0.9,
                color: const Color(0xFFFCF9EA),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 30),
                          child: Icon(
                            FontAwesomeIcons.boxOpen,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, right: 20),
                          child: Text(
                            '無料',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: const [
                          Text('Storage'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0, right: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: '12.5GB ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '/50GB',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SquareIconButton(
                            icon: Icons.create_new_folder_outlined,
                            backgroundColor: Colors.white,
                            iconColor: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '共有ファイル',
                  style: TextStyle(fontSize: 17),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: SharedFile(
                    text: 'スクリプト',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: SharedFile(
                    text: 'オフィス関連',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: SharedFile(
                    text: 'ギャラリー',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: SharedFile(
                    text: 'その他',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '最近の利用',
                  style: TextStyle(fontSize: 17),
                )),
          ),
          SingleChildScrollView(
            child: Column(children: const [
              _ListTile(
                title: 'バックアップ',
                subtitle: '1.4MB・数分前',
              ),
              _ListTile(
                iconBackgroundColor: Color(0xFFF5DFF5),
                title: '録音',
                subtitle: '839KB・2時間前',
                icon: Icons.mic,
              ),
              _ListTile(
                iconBackgroundColor: Color(0xFFE7F5F8),
                title: 'IMG23423',
                subtitle: '12.4MB・5日前',
                icon: Icons.image_outlined,
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile(
      {Key? key,
      this.iconBackgroundColor = const Color(0xFFE0F0FE),
      required this.title,
      required this.subtitle,
      this.icon = Icons.description_outlined})
      : super(key: key);

  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: iconBackgroundColor,
            width: 45,
            height: 45,
            child: SizedBox(
              height: double.infinity,
              child: Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}

class SharedFile extends StatelessWidget {
  const SharedFile({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: const Color(0xFFFAFAFA),
        height: height * 0.1,
        width: width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.folderClosed),
            const SizedBox(
              height: 15,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({
    Key? key,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.white,
    this.width = 35,
    this.height = 35,
    required this.icon,
  }) : super(key: key);
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: backgroundColor,
          width: width,
          height: height,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
