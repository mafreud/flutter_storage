import 'package:flutter/material.dart';
import 'package:flutter_storage/src/features/file/file_model.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.fileModel, Key? key}) : super(key: key);
  final FileModel fileModel;

  @override
  Widget build(BuildContext context) {
    final extension = fileModel.fileExtension;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 65,
                width: 65,
                color: extension.iconColor,
                child: Icon(
                  extension.iconData,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              fileModel.fileName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Size: ${fileModel.fileSize}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _IconWithText(
                  iconData: Icons.download_outlined,
                  text: 'Download',
                ),
                _IconWithText(
                  iconData: Icons.verified_user_outlined,
                  text: 'Protect',
                ),
                _IconWithText(
                  iconData: Icons.upload_file_outlined,
                  text: 'Move file',
                ),
                _IconWithText(
                  iconData: Icons.delete_outline,
                  text: 'Delete',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'File Details',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _Detail(
              title: 'Type',
              extension: fileModel.fileExtension.name,
            ),
            _Detail(
              title: 'File size',
              extension: fileModel.fileSize,
            ),
            _Detail(
              title: 'Created',
              extension:
                  '${fileModel.createdAt.day}/${fileModel.createdAt.year}/${fileModel.createdAt.month}',
            ),
            const _Detail(
              title: 'Modified',
              extension: '5/2022/9',
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shared with',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, right: 22, bottom: 4, left: 22),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color(0xFFFAFAFA),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Stack(
                        children: const [
                          Align(
                            alignment: Alignment(-1, 0),
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/profile_1.jpg')),
                          ),
                          Align(
                            alignment: Alignment(-0.86, 0),
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/profile_2.jpg')),
                          ),
                          Align(
                            alignment: Alignment(-0.72, 0),
                            child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/profile_3.jpg')),
                          ),
                          Align(
                            alignment: Alignment(-0.17, 0),
                            child: Text(
                              '20+ Accounts',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment(1, 0),
                            child: Icon(
                              Icons.settings_outlined,
                              size: 19,
                              color: Color(0xFF707FC0),
                            ),
                          ),

                          // const Align(
                          //   alignment: Alignment(-0.9, 0),
                          //   child: CircleAvatar(),
                          // ),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class _Detail extends StatelessWidget {
  const _Detail({
    required this.title,
    required this.extension,
    Key? key,
  }) : super(key: key);
  final String title;
  final String extension;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, right: 22, bottom: 4, left: 22),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 50,
            child: ListTile(
              dense: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: const Color(0xFFFAFAFA),
              title: Text(
                title,
                style: const TextStyle(color: Colors.black54, fontSize: 16),
              ),
              trailing: Text(
                extension,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          )),
    );
  }
}

class _IconWithText extends StatelessWidget {
  const _IconWithText({
    required this.iconData,
    required this.text,
    Key? key,
  }) : super(key: key);
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 43,
              width: 43,
              color: const Color(0xFFF6F6F6),
              child: Icon(
                iconData,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          )
        ],
      ),
    );
  }
}
