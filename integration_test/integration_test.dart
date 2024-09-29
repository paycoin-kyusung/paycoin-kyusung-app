import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:paycoin_kyusung_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUp(() async {});
  testWidgets("Temp", (WidgetTester tester) async {
    await tester.pumpWidget(
      const PaycoinApp(),
    );
    await tester.pumpAndSettle(const Duration(seconds: 5));
  });
}
