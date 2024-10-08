import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        height: 300,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.cyan,
          border: Border.all(width: 4, color: Colors.yellow),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
              'Flutter adalah framework open-source yang dikembangkan oleh Google untuk membangun aplikasi mobile, web, dan desktop dengan satu basis kode. Dengan menggunakan bahasa pemrograman Dart, Flutter menawarkan berbagai widget yang dapat disesuaikan, memungkinkan pengembang menciptakan antarmuka pengguna yang menarik dan responsif. Keunggulan Flutter termasuk hot reload, yang memungkinkan pengembang melihat perubahan secara instan tanpa kehilangan status aplikasi. Selain itu, Flutter mendukung berbagai platform, termasuk iOS, Android, dan web, sehingga mempercepat proses pengembangan. Komunitas yang aktif dan banyaknya paket yang tersedia di pub.dev juga mendukung pengembangan aplikasi yang lebih efisien dan inovatif. '),
        )
        // alignment: Alignment.center,
        );
  }
}
