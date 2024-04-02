import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 5)),
                ToggleSwich(),
                const SizedBox(height: 10),
                SizedBox(
                  width: 359,
                  height: 359,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                        'https://webahang.ir/wp-content/uploads/2023/08/Mohammadbagher-Al-Khaghani041.jpg'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.hand_thumbsup),
                      Center(
                        child: Column(
                          children: [
                            Text('لیالی الجروح'),
                            Text('محمد باقر الخاقانی'),
                          ],
                        ),
                      ),
                      Icon(CupertinoIcons.hand_thumbsdown)
                    ],
                  ),
                ),
                Slider(
                  value: 0.5,
                  onChanged: (value) {},
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0.35'),
                    Text('3.33'),
                  ],
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.repeat),
                      Icon(CupertinoIcons.forward_end_fill),
                      Icon(
                        CupertinoIcons.play_circle_fill,
                        size: 45,
                      ),
                      Icon(CupertinoIcons.backward_end_fill),
                      Icon(CupertinoIcons.shuffle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ToggleSwich extends StatefulWidget {
  @override
  State<ToggleSwich> createState() => _ToggleSwichState();
}

class _ToggleSwichState extends State<ToggleSwich> {
  bool isToggled = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerRight,
          width: 110,
          height: 32,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.33),
              borderRadius: BorderRadius.circular(32.5)),
        ),
        Positioned(
          left: isToggled ? 0 : null,
          right: !isToggled ? 0 : null,
          child: GestureDetector(
            onTap: () => setState(() {
              isToggled = !isToggled;
            }),
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.16),
                  borderRadius: BorderRadius.circular(35.5)),
              child: Text(isToggled ? 'ویدیو' : 'صدا'),
            ),
          ),
        ),
      ],
    );
  }
}
