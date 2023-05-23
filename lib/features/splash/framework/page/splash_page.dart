import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsappsendnumber/features/splash/framework/di/splash_di.dart';
import 'package:whatsappsendnumber/resources/images_app.dart';

import '../../../../resources/dimens_app.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends ConsumerState<SplashPage>  {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      initObservers();
      ref.read(splashProvider.notifier).setUp();
      ref.read(splashProvider.notifier).getNextFlow();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: null,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(logoApp, height: imageSplash, width: imageSplash,), const SizedBox(height: doubleSeparation), const CircularProgressIndicator()],
            ),
          ),
        ));
  }

  initObservers() {
    ref.watch(splashProvider.notifier).addListener((state) {
      if (state.navigation.target.isNotEmpty) {
        context.go(state.navigation.target);
      }
    });
  }
}
