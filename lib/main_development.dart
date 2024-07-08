// import 'app/firebase/firebase_options_development.dart';
import 'app/view/app.dart';
import 'bootstrap.dart';
import 'core/utils/constants.dart';

void main() {
  bootstrap(
    () => const App(),
    environment: Environment.development,
    // firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );
}
