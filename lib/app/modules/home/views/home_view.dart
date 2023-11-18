import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniturwisata/app/data/theme/theme.dart';
import 'package:furniturwisata/app/modules/card/views/card_view.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set warna status bar dan buatnya transparan
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness
          .dark, // Ubah ke Brightness.light jika ingin ikon putih pada status bar
    ));

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        // Sesuaikan dengan kebutuhan Anda
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness
            .dark, // Ubah ke Brightness.light jika ingin ikon putih pada status bar
      ),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: edge,
              ),
              // TITLE
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: const Text(
                  'Best Place Wonderfuly',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Perfect Choice!',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // POPULAR FURNITURE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: CardView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
