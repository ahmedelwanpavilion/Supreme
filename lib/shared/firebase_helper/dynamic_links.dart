// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
//
//
// class DynamicLinksClient {
//   static void initDynamicLinks(Function(String?) function) async {
//     FirebaseDynamicLinks.instance.onLink.listen((dynamicLink) {
//       final Uri? deepLink = dynamicLink.link;
//       if (deepLink != null) {
//         function(deepLink.queryParameters['product']);
//       }
//     });
//
//     final PendingDynamicLinkData? data =
//         await FirebaseDynamicLinks.instance.getInitialLink();
//     final Uri? deepLink = data?.link;
//
//     if (deepLink != null) {
//       function(deepLink.queryParameters['product']);
//     }
//   }
//
//   static Future<Uri> createUri(String uri) async {
//     final DynamicLinkParameters parameters = DynamicLinkParameters(
//       uriPrefix: 'https://soldoutapp.page.link',
//       link: Uri.parse(uri),
//       androidParameters:const AndroidParameters(
//         packageName: 'com.example.soldout',
//         minimumVersion: 1,
//       ),
//       iosParameters:const IOSParameters(
//         bundleId: 'com.example.soldout',
//         minimumVersion: '1',
//         // appStoreId: '123456789',
//       ),
//     );
//
//     final ShortDynamicLink shortDynamicLink =
//         await FirebaseDynamicLinks.instance.buildShortLink(parameters);
//     return shortDynamicLink.shortUrl;
//   }
// }
