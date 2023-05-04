import 'package:flutter/material.dart';
import 'package:goodgo/pages/gare_screen.dart';
import '../../utils/strings.dart';

class Gare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GareScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Strings.APP_COLOR_BORDER_GARE, width: 2),
          color: Strings.APP_COLOR_MODULE_BG_GARE,
        ),
        // color: Colors.cyan,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset('android/app/src/zona/assets/coppa.png',
                    height: 50, width: 50),
              ),
            ),
            Center(
                child: Text(
              Strings.APP_TAG_GARE,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            )),
            Divider(color: Colors.grey.withOpacity(0.8)),
            const Center(
                child: Text(
              Strings.APP_TAG_GARE_DESC,
              style: TextStyle(fontSize: 18),
            )),
          ],
        ),
      ),
    );
  }
}
