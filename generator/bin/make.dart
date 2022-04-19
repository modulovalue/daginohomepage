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
import 'package:alfred/bluffer/html/html_impl.dart';
import 'package:alfred/bluffer/widgets/click/click.dart';
import 'package:alfred/bluffer/widgets/container/container.dart';
import 'package:alfred/bluffer/widgets/flex/flex.dart';
import 'package:alfred/bluffer/widgets/image/image.dart';
import 'package:alfred/bluffer/widgets/padding/padding.dart';
import 'package:alfred/bluffer/widgets/sized_box/sized_box.dart';
import 'package:alfred/bluffer/widgets/text/text.dart';
import 'package:alfred/bluffer/widgets/theme/theme.dart';
import 'package:alfred/bluffer/widgets/widget/interface/widget.dart';

void main() {
  publishApp(
    serializeTo: (final path, final element) => File(path).writeAsStringSync(
      serializeHtml(
        html: element,
      ),
    ),
    root: App(
      supportedLocales: [
        const Locale('de', 'DE'),
      ],
      application: (final route) => AppWidget(
        route: route,
        scriptLinks: [
          ScriptElementImpl(
            async: true,
            src: "https://www.googletagmanager.com/gtag/js?id=UA-131367984-1",
          ),
          ScriptElementImpl(
            content: """
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-131367984-1');""",
          ),
        ],
      ),
      routes: [
        UrlWidgetRoute(
          title: (final context) => "Da Gino - Rheinstetten-Mörsch, Karlsruhe | Restaurant & Pizzeria",
          relativeUrl: 'index',
          builder: (final context) => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Restaurant Da Gino",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4.0),
                const Text(
                  "in Rheinstetten-Mörsch (Karlsruhe)",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                ..._paddedDivider(),
                Row(
                  children: [
                    const Text("Speisekarte:"),
                    const SizedBox(width: 8.0),
                    _button(
                      "http://dagino.de/mitnahmespeisekarte.pdf",
                      "Mitnahme-Speisekarte",
                    ),
                  ],
                ),
                ..._paddedDivider(),
                Row(
                  children: [
                    const Text("Navigation"),
                    const SizedBox(width: 8.0),
                    _button(
                      "http://dagino.de/g",
                      "Google Maps",
                    ),
                  ],
                ),
                ..._paddedDivider(),
                Row(
                  children: [
                    const Text("Bilder"),
                    const SizedBox(width: 8.0),
                    _button(
                      "http://dagino.de/g",
                      "Bilder",
                    ),
                  ],
                ),
                ..._paddedDivider(),
                Row(
                  children: [
                    const Text("Telefon:"),
                    const SizedBox(width: 8.0),
                    _button(
                      "tel:072429538400",
                      "07242 9538400",
                    ),
                  ],
                ),
                ..._paddedDivider(),
                Row(
                  children: [
                    const Text("E-Mail:"),
                    const SizedBox(width: 8.0),
                    _button(
                      "mailto:kontakt@dagino.de",
                      "kontakt@dagino.de",
                    ),
                  ],
                ),
                ..._paddedDivider(),
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
                        Text("Ruhetag"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:30 & 17:00 - 23:30"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:30 & 17:00 - 23:30"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:30 & 17:00 - 23:30"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:30 & 17:00 - 23:30"),
                        SizedBox(height: 2.0),
                        Text("17:00 - 23:30"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:30 & 17:00 - 22:00"),
                      ],
                    ),
                  ],
                ),
                ..._paddedDivider(),
                const Text(
                  "Warme Küche",
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
                        Text("Ruhetag"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:00 & 17:00 - 22:00"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:00 & 17:00 - 22:00"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:00 & 17:00 - 22:00"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:00 & 17:00 - 22:00"),
                        SizedBox(height: 2.0),
                        Text("17:00 - 22:00"),
                        SizedBox(height: 2.0),
                        Text("11:30 - 14:00 & 17:00 - 21:00"),
                      ],
                    ),
                  ],
                ),
                ..._paddedDivider(),
                const SizedBox(height: 4.0),
                const Text("Rheinaustraße 53"),
                const SizedBox(height: 2.0),
                const Text("76287 Rheinstetten"),
                ..._paddedDivider(),
                const Image(
                  image: ImageProvider.asset("logo.png"),
                  semanticsLabel: "Da Gino Logo",
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

Iterable<Widget> _paddedDivider() sync* {
  yield const SizedBox(height: 8.0);
  yield const Container(
    height: 1.0,
    width: 130.0,
    decoration: BoxDecoration(
      color: Color(0x66000000),
    ),
  );
  yield const SizedBox(height: 8.0);
}

Widget _button(
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
