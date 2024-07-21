import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'app_assets.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'constants.dart';

import 'app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false,
      isGraphic = false,
      isDataAnalyst = false,
      isWebDesign = false,
      isContentCreation = false,
      isDigitalMarketing = false,
      isECommerce = false;
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              'My Services',
              style: AppTextStyles.notoSansStyle(color: Colors.black),
            ),
          ),
          Constants.sizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: [
                buildAnimatedContainer(
                  title: 'Docs',
                  asset: AppAssets.docs,
                  hover: isApp,
                  description:
                      'Develop custom mobile apps for iOS and Android platforms.',
                ),
                buildAnimatedContainer(
                  title: 'Whiteboards',
                  asset: AppAssets.whiteboard,
                  hover: isGraphic,
                  description:
                      'Create visually appealing graphics and designs.',
                ),
                buildAnimatedContainer(
                  title: 'Presentations',
                  asset: AppAssets.presentation,
                  hover: isDigitalMarketing,
                  description:
                      'Develop and implement effective digital marketing strategies.',
                ),
                buildAnimatedContainer(
                  title: 'Social',
                  asset: AppAssets.social,
                  hover: isWebDesign,
                  description:
                      'Design and develop responsive, user-friendly websites.',
                ),
                buildAnimatedContainer(
                  title: 'Videos',
                  asset: AppAssets.videos,
                  hover: isContentCreation,
                  description:
                      'Produce high-quality written, visual, and multimedia content.',
                ),
                buildAnimatedContainer(
                  title: 'Prints',
                  asset: AppAssets.prints,
                  hover: isDataAnalyst,
                  description:
                      'Analyze complex data sets to uncover valuable insights.',
                ),
                buildAnimatedContainer(
                  title: 'Websites',
                  asset: AppAssets.websites,
                  hover: isECommerce,
                  description:
                      'Build and optimize online stores for seamless e-commerce experiences.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    required String description,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 400 : 390,
      height: hover ? 440 : 430,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 10) : null,
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5))
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            description,
            style: AppTextStyles.notoSansStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
        ],
      ),
    );
  }
}
