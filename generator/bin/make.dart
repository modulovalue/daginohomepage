import 'dart:io';

import 'package:alfred/bluffer/base/app.dart';
import 'package:alfred/bluffer/base/border_radius.dart';
import 'package:alfred/bluffer/base/color.dart';
import 'package:alfred/bluffer/base/decoration.dart';
import 'package:alfred/bluffer/base/edge_insets.dart';
import 'package:alfred/bluffer/base/image.dart';
import 'package:alfred/bluffer/base/locale.dart';
import 'package:alfred/bluffer/base/publish/publish.dart';
import 'package:alfred/bluffer/base/publish/serialize.dart';
import 'package:alfred/bluffer/base/text.dart';
import 'package:alfred/bluffer/widgets/click/click.dart';
import 'package:alfred/bluffer/widgets/container/container.dart';
import 'package:alfred/bluffer/widgets/flex/flex.dart';
import 'package:alfred/bluffer/widgets/image/image.dart';
import 'package:alfred/bluffer/widgets/padding/padding.dart';
import 'package:alfred/bluffer/widgets/sized_box/sized_box.dart';
import 'package:alfred/bluffer/widgets/text/text.dart';
import 'package:alfred/bluffer/widgets/theme/theme.dart';
import 'package:alfred/bluffer/widgets/widget/interface/widget.dart';

// custom scripts
//
/*   <!-- Global site tag (gtag.js) - Google Analytics -->
   <script async src="https://www.googletagmanager.com/gtag/js?id=UA-131367984-1"></script>
   <script>
     window.dataLayer = window.dataLayer || [];
     function gtag(){dataLayer.push(arguments);}
     gtag('js', new Date());

     gtag('config', 'UA-131367984-1');
   </script> */
void main() {
  publishApp(
    serializeTo: (final path, final element) => File(path).writeAsStringSync(serializeHtml(html: element)),
    root: App(
      supportedLocales: [
        const Locale('de', 'DE'),
      ],
      application: (final route) => AppWidget(
        route: route,
        // TODO support scripts tags that have content.
      ),
      routes: [
        UrlWidgetRoute(
          title: (context) => "Da Gino - Rheinstetten-Mörsch Karlsruhe | Restaurant & Pizzeria",
          relativeUrl: 'index',
          builder: (context) => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Restaurant Da Gino in Rheinstetten",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("Speisekarte:"),
                    const SizedBox(width: 8.0),
                    button(
                      "http://dagino.de/mitnahmespeisekarte.pdf",
                      "Mitnahme-Speisekarte",
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("Navigation"),
                    const SizedBox(width: 8.0),
                    button(
                      "http://dagino.de/g",
                      "Google Maps",
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("Bilder"),
                    const SizedBox(width: 8.0),
                    button(
                      "http://dagino.de/g",
                      "Bilder",
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("Telefon:"),
                    const SizedBox(width: 8.0),
                    button(
                      "tel:072429538400",
                      "07242 9538400",
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text("E-Mail:"),
                    const SizedBox(width: 8.0),
                    button(
                      "mailto:kontakt@dagino.de",
                      "kontakt@dagino.de",
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                const Text(
                  "Öffnungszeiten",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Montag:"),
                        SizedBox(height: 2.0),
                        Text("Dienstag:"),
                        SizedBox(height: 2.0),
                        Text("Mittwoch:"),
                        SizedBox(height: 2.0),
                        Text("Donnerstag:"),
                        SizedBox(height: 2.0),
                        Text("Freitag:"),
                        SizedBox(height: 2.0),
                        Text("Samstag:"),
                        SizedBox(height: 2.0),
                        Text("Sonntag:"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Ruhetag"),
                        SizedBox(height: 2.0),
                        Text("  17:00 - 21:00"),
                        SizedBox(height: 2.0),
                        Text("  11:00 - 14:00 & 17:00 - 21:00"),
                        SizedBox(height: 2.0),
                        Text("  11:00 - 14:00 & 17:00 - 21:00"),
                        SizedBox(height: 2.0),
                        Text("  11:00 - 14:00 & 17:00 - 21:00"),
                        SizedBox(height: 2.0),
                        Text("  17:00 - 21:00"),
                        SizedBox(height: 2.0),
                        Text("  11:30 - 14:00 & 17:00 - 21:00"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                const Text(
                  "Adresse",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text("Rheinaustraße 53"),
                const SizedBox(height: 2.0),
                const Text("76287 Rheinstetten"),
                const SizedBox(height: 8.0),
                divider,
                const SizedBox(height: 8.0),
                const Image(
                  image: ImageProvider.asset("logo.png"),
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

const divider = Container(
  height: 1.0,
  width: 130.0,
  decoration: BoxDecoration(
    color: Color(0x66000000),
  ),
);

Widget button(
  final String target,
  final String info,
) =>
    Click(
      newTab: true,
      url: target,
      builder: (final context, final state) => Container(
        child: Text(
          info,
          style: Theme.of(context)!.text.paragraph.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: () {
                    if (state == ClickState.hover) {
                      return const Color(0xFFFFFFFF);
                    } else {
                      return const Color(0xFFFFFFFF);
                    }
                  }(),
                ),
              ),
        ),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: () {
            if (state == ClickState.hover) {
              return const Color(0x99AA0000);
            } else {
              return const Color(0xFFAA0000);
            }
          }(),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
