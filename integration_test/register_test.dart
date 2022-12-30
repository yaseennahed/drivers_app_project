import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_app/constans_keys/const_keys.dart';
import 'package:integration_test/integration_test.dart';
import 'package:grocery_app/main.dart' as app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("group_auth",(){
    testWidgets("registerScreen", (tester)async{
         app.main();
         await tester.pumpAndSettle();
         await tester.enterText(find.byKey(Constkey.Name), "Ahmed");
         await tester.pumpAndSettle();
         await tester.enterText(find.byKey(Constkey.Email), "Ahmed@example.com");
         await tester.pumpAndSettle();
         await tester.enterText(find.byKey(Constkey.Password), "thdth");
         await tester.pumpAndSettle();
         await tester.enterText(find.byKey(Constkey.Address), "palestine");
         await tester.pumpAndSettle(const Duration(seconds: 1));
         await tester.testTextInput.receiveAction(TextInputAction.done);

    });
  });
}