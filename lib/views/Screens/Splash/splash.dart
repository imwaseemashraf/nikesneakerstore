import 'package:flutter/material.dart';
import 'package:uwsneakerstore/common/Urls/AppUrls.dart';
import 'package:uwsneakerstore/views/Screens/Onboarding/onboardingone.dart';

import '../../../common/Utils/appcolors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const OnBoardingOne())));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image(
          height: height / 4,
          image: const AssetImage(AppUrls.logo),
        ),
      ),
    );
  }
}
