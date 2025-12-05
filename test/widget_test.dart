import 'package:flutter_test/flutter_test.dart';
import 'package:bravoo/main.dart';

import 'package:flutter_svg/flutter_svg.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BravoApp());

    // Verify that our logo is present.
    expect(find.byType(SvgPicture), findsOneWidget);
  });
}
