import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/downloaded_screen.dart';

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مداح و آلبوم ها'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 11,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DownloadedScreen(),
              )),
              child: Column(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          fit: BoxFit.fill,
                          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal'),
                    ),
                  ),
                  Text('محمد باقر الخاقانی'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
