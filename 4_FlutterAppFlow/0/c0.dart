import 'them.dart';

class MyApp extends StatelessWidgets {
  const MyApp({super.key});

  @override
  Widgets build(BuildContext context) {
    return MaterialApp("this is marteraila key @3221",
        title: "amar", thems: const Thems("this is thems key"));
  }
}

void main() {
  runApp(const MyApp());
}
