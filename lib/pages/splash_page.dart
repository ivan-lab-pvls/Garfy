import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:finance_app5/main.dart';
import 'package:finance_app5/pages/home_page.dart';
import 'package:finance_app5/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splashIconSize: double.infinity,
      backgroundColor: const Color(0xFF151515),
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon.png',
              scale: 1.8,
            ),
          ],
        ),
      ),
      nextScreen: initScreen == 0 || initScreen == null
          ? const OnBoardingPage()
          : const HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

class gdfgdfgd extends StatefulWidget {
  final String fdsxsa;
  final String swqeqw;
  final String gdfgfdgd;

  gdfgdfgd(
      {required this.fdsxsa, required this.swqeqw, required this.gdfgfdgd});

  @override
  State<gdfgdfgd> createState() => _gdfgdfgdState();
}

class _gdfgdfgdState extends State<gdfgdfgd> {
  late AppsflyerSdk _appsflyerSdk;
  String fsdfsd = '';
  bool fdsfsd = false;
  String jghjghj = '';
  String fsdfsdfdsfsd = '';
  String gdfvdc = '';
  Map _deepLinkData = {};
  Map _gcd = {};

  @override
  void initState() {
    super.initState();
    fsdfsdfds();
    initAppsflyerSdk();
  }

  Future<void> initAppsflyerSdk() async {
    final AppsFlyerOptions options = AppsFlyerOptions(
      showDebug: false,
      afDevKey: 'doJsrj8CyhTUWPZyAYTByE',
      appId: '6503698850',
      timeToWaitForATTUserAuthorization: 15,
      disableAdvertisingIdentifier: false,
      disableCollectASA: false,
      manualStart: true,
    );
    _appsflyerSdk = AppsflyerSdk(options);

    await _appsflyerSdk.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
      registerOnDeepLinkingCallback: true,
    );

    _appsflyerSdk.onAppOpenAttribution((res) {
      setState(() {
        _deepLinkData = res;
        fsdfsdfdsfsd = res['payload']
            .entries
            .where((e) => ![
                  'install_time',
                  'click_time',
                  'af_status',
                  'is_first_launch'
                ].contains(e.key))
            .map((e) => '&${e.key}=${e.value}')
            .join();
      });
    });

    _appsflyerSdk.onInstallConversionData((res) {
      setState(() {
        _gcd = res;
        fdsfsd = res['payload']['is_first_launch'];
        gdfvdc = res['payload']['af_status'];
        jghjghj = '&is_first_launch=$fdsfsd&af_status=$gdfvdc';
        print(jghjghj);
      });
    });

    _appsflyerSdk.onDeepLinking((DeepLinkResult dp) {
      switch (dp.status) {
        case Status.FOUND:
          print(dp.deepLink?.toString());
          print("deep link value: ${dp.deepLink?.deepLinkValue}");
          break;
        case Status.NOT_FOUND:
          print("deep link not found");
          break;
        case Status.ERROR:
          print("deep link error: ${dp.error}");
          break;
        case Status.PARSE_ERROR:
          print("deep link status parsing error");
          break;
      }
      print("onDeepLinking res: " + dp.toString());
      setState(() {
        _deepLinkData = dp.toJson();
      });
    });

    _appsflyerSdk.startSDK(
      onSuccess: () {
        print("AppsFlyer SDK initialized successfully.");
      },
    );

    await fsdfsdfs();
  }

  Future<void> fsdfsdfds() async {
    final TrackingStatus status =
        await AppTrackingTransparency.requestTrackingAuthorization();
    print(status);
  }

  Future<void> fsdfsdfs() async {
    try {
      fsdfsd = await _appsflyerSdk.getAppsFlyerUID() ?? '';
      fsdfsd = '&appsflyer_id=$fsdfsd';
      print("AppsFlyer ID: $fsdfsd");
    } catch (e) {
      print("Failed to get AppsFlyer ID: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final completeUrl = '${widget.fdsxsa}${widget.gdfgfdgd}${widget.swqeqw}';
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(completeUrl),
          ),
        ),
      ),
    );
  }
}
