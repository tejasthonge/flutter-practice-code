void runApp(StatelessWidgets app) {
  // app.build(Last());
  app.build(Last());
}

abstract class Widgets {
  final String key;
  const Widgets(this.key);
}

/*
A widget that does not require mutable state.

A stateless widget is a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely. The building process continues recursively until the description of the user interface is fully concrete (e.g., consists entirely of RenderObjectWidgets, which describe concrete RenderObjects).
*/

//

class BuildContext {}

class Last extends BuildContext {
  Last() {
    print("app running");
  }
}

class Key {
  final String key;
  const Key(this.key);
}

//

/*
n application that uses Material Design.

A convenience widget that wraps a number of widgets that are commonly required for Material Design applications. It builds upon a WidgetsApp by adding material-design specific functionality, such as AnimatedTheme and GridPaper.

MaterialApp configures its WidgetsApp.textStyle with an ugly red/yellow text style that's intended to warn the developer that their app hasn't defined a default text style. Typically the app's Scaffold builds a Material widget whose default Material.textStyle defines the text style for the entire scaffold.

The MaterialApp configures the top-level Navigator to search for routes in the following order:

For the / route, the home property, if non-null, is used.

Otherwise, the routes table is used, if it has an entry for the route.

Otherwise, onGenerateRoute is called, if provided. It should return a non-null value for any valid route not handled by home and routes.

Finally if all else fails onUnknownRoute is called.

If a Navigator is created, at least one of these options must handle the / route, since it is used when an invalid initialRoute is specified on startup (e.g. by another application launching this one with an intent on Android; see dart:ui.PlatformDispatcher.defaultRouteName).

This widget also configures the observer of the top-level Navigator (if any) to perform Hero animations.

The MaterialApp automatically creates a DefaultSelectionStyle. It uses the colors in the ThemeData.textSelectionTheme if they are not null; otherwise, the MaterialApp sets DefaultSelectionStyle.selectionColor to ColorScheme.primary with 0.4 opacity and DefaultSelectionStyle.cursorColor to ColorScheme.primary.

If home, routes, onGenerateRoute, and onUnknownRoute are all null, and builder is not null, then no Navigator is created.
*/

class Thems extends Widgets {
  const Thems(super.key);
  void them() {
    print("dark them");
  }
}

class MaterialApp extends Widgets {
  final String title;
  final Widgets thems;
  const MaterialApp(super.key, {required this.title, required this.thems});
  void materialApp() {
    print(title);
    // thems.them();
  }

  @override
  Widgets build(BuildContext context) {
    Object add = this.hashCode;
    print("     in (build) of [materialApp] $add");
    return MaterialApp("this is marteraila key @3221",
        title: "amar", thems: const Thems("this is thems key"));
  }

  /*
  const MaterialApp(
{Key? key,
GlobalKey<NavigatorState>? navigatorKey,
GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
Widget? home,
Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
String? initialRoute,
RouteFactory? onGenerateRoute,
InitialRouteListFactory? onGenerateInitialRoutes,
RouteFactory? onUnknownRoute,
NotificationListenerCallback<NavigationNotification>? onNavigationNotification,
List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
TransitionBuilder? builder,
String title = '',
GenerateAppTitle? onGenerateTitle,
Color? color,
ThemeData? theme,
ThemeData? darkTheme,
ThemeData? highContrastTheme,
ThemeData? highContrastDarkTheme,
ThemeMode? themeMode = ThemeMode.system,
Duration themeAnimationDuration = kThemeAnimationDuration,
Curve themeAnimationCurve = Curves.linear,
Locale? locale,
Iterable<LocalizationsDelegate>? localizationsDelegates,
LocaleListResolutionCallback? localeListResolutionCallback,
LocaleResolutionCallback? localeResolutionCallback,
Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
bool debugShowMaterialGrid = false,
bool showPerformanceOverlay = false,
bool checkerboardRasterCacheImages = false,
bool checkerboardOffscreenLayers = false,
bool showSemanticsDebugger = false,
bool debugShowCheckedModeBanner = true,
Map<ShortcutActivator, Intent>? shortcuts,
Map<Type, Action<Intent>>? actions,
String? restorationScopeId,
ScrollBehavior? scrollBehavior,
@Deprecated('Remove this parameter as it is now ignored. ' 'MaterialApp never introduces its own MediaQuery; the View widget takes care of that. ' 'This feature was deprecated after v3.7.0-29.0.pre.') bool useInheritedMediaQuery = false}
)
  */
}

abstract class StatelessWidgets extends Widgets {
  const StatelessWidgets({required Key? key}) : super("this is key 242@321");
  Widgets build(BuildContext context);

  /*
  build abstract method
@protected
Widget build(
BuildContext context
)
Describes the part of the user interface represented by this widget.

The framework calls this method when this widget is inserted into the tree in a given BuildContext and when the dependencies of this widget change (e.g., an InheritedWidget referenced by this widget changes). This method can potentially be called in every frame and should not have any side effects beyond building a widget.

The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling Widget.canUpdate.

Typically implementations return a newly created constellation of widgets that are configured with information from this widget's constructor and from the given BuildContext.

The given BuildContext contains information about the location in the tree at which this widget is being built. For example, the context provides the set of inherited widgets for this location in the tree. A given widget might be built with multiple different BuildContext arguments over time if the widget is moved around the tree or if the widget is inserted into the tree in multiple places at once.

The implementation of this method must only depend on:

the fields of the widget, which themselves must not change over time, and
any ambient state obtained from the context using BuildContext.dependOnInheritedWidgetOfExactType.
If a widget's build method is to depend on anything else, use a StatefulWidget instead.

See also:

StatelessWidget, which contains the discussion on performance considerations.
Implementation
@protected
Widget build(BuildContext context);
   */
}
