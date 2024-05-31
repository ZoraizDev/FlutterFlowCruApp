import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LandingViewWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LandingViewWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'LandingView',
          path: '/landingView',
          builder: (context, params) => const LandingViewWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'passwordView',
          path: '/passwordView',
          builder: (context, params) => PasswordViewWidget(
            userEmail: params.getParam(
              'userEmail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'OtpView',
          path: '/otpView',
          builder: (context, params) => const OtpViewWidget(),
        ),
        FFRoute(
          name: 'OnBoardingOneScreen',
          path: '/onBoardingOneScreen',
          builder: (context, params) => const OnBoardingOneScreenWidget(),
        ),
        FFRoute(
          name: 'AccountSetup',
          path: '/accountSetup',
          builder: (context, params) => const AccountSetupWidget(),
        ),
        FFRoute(
          name: 'SetPassowrdView',
          path: '/setPassowrdView',
          builder: (context, params) => SetPassowrdViewWidget(
            regesterEmail: params.getParam(
              'regesterEmail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'AirPortAreaScreen',
          path: '/airPortAreaScreen',
          builder: (context, params) => const AirPortAreaScreenWidget(),
        ),
        FFRoute(
          name: 'FlightSelection',
          path: '/flightSelection',
          builder: (context, params) => const FlightSelectionWidget(),
        ),
        FFRoute(
          name: 'AccountInformation',
          path: '/accountInformation',
          builder: (context, params) => const AccountInformationWidget(),
        ),
        FFRoute(
          name: 'SuccessCreateAccount',
          path: '/successCreateAccount',
          builder: (context, params) => const SuccessCreateAccountWidget(),
        ),
        FFRoute(
          name: 'HomeScreen',
          path: '/homeScreen',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomeScreen')
              : const HomeScreenWidget(),
        ),
        FFRoute(
          name: 'ReSetPasswordView',
          path: '/reSetPasswordView',
          builder: (context, params) => ReSetPasswordViewWidget(
            registerEmail: params.getParam(
              'registerEmail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ProfileCreationSuccess',
          path: '/profileCreationSuccess',
          builder: (context, params) => const ProfileCreationSuccessWidget(),
        ),
        FFRoute(
          name: 'ComeBackLater',
          path: '/comeBackLater',
          builder: (context, params) => const ComeBackLaterWidget(),
        ),
        FFRoute(
          name: 'LandingPageComingSoon',
          path: '/landingPageComingSoon',
          builder: (context, params) => const LandingPageComingSoonWidget(),
        ),
        FFRoute(
          name: 'OtpScreen',
          path: '/otpScreen',
          builder: (context, params) => OtpScreenWidget(
            registerEmail: params.getParam(
              'registerEmail',
              ParamType.String,
            ),
            password: params.getParam(
              'password',
              ParamType.String,
            ),
            retypePssword: params.getParam(
              'retypePssword',
              ParamType.String,
            ),
            otp: params.getParam(
              'otp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'WebResetPassword',
          path: '/webResetPassword',
          builder: (context, params) => const WebResetPasswordWidget(),
        ),
        FFRoute(
          name: 'SuccessfulPasswordReset',
          path: '/successfulPasswordReset',
          builder: (context, params) => const SuccessfulPasswordResetWidget(),
        ),
        FFRoute(
          name: 'OtpViewScreen',
          path: '/otpViewScreen',
          builder: (context, params) => OtpViewScreenWidget(
            newOTP: params.getParam(
              'newOTP',
              ParamType.String,
            ),
            regidterEmail: params.getParam(
              'regidterEmail',
              ParamType.String,
            ),
            password: params.getParam(
              'password',
              ParamType.String,
            ),
            confirmPass: params.getParam(
              'confirmPass',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'crus',
          path: '/crus',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'crus') : const CrusWidget(),
        ),
        FFRoute(
          name: 'Drawer',
          path: '/drawer',
          builder: (context, params) => const DrawerWidget(),
        ),
        FFRoute(
          name: 'settingsAndPrivacy',
          path: '/settingsAndPrivacy',
          builder: (context, params) => const SettingsAndPrivacyWidget(),
        ),
        FFRoute(
          name: 'Account',
          path: '/account',
          builder: (context, params) => const AccountWidget(),
        ),
        FFRoute(
          name: 'Location',
          path: '/location',
          builder: (context, params) => const LocationWidget(),
        ),
        FFRoute(
          name: 'Certification',
          path: '/certification',
          builder: (context, params) => const CertificationWidget(),
        ),
        FFRoute(
          name: 'Prefrences',
          path: '/prefrences',
          builder: (context, params) => const PrefrencesWidget(),
        ),
        FFRoute(
          name: 'Notification',
          path: '/notification',
          builder: (context, params) => const NotificationWidget(),
        ),
        FFRoute(
          name: 'AddFlightLog',
          path: '/addFlightLog',
          builder: (context, params) => const AddFlightLogWidget(),
        ),
        FFRoute(
          name: 'SelectFlightScreen',
          path: '/selectFlightScreen',
          builder: (context, params) => const SelectFlightScreenWidget(),
        ),
        FFRoute(
          name: 'FlightTimeScreen',
          path: '/flightTimeScreen',
          builder: (context, params) => const FlightTimeScreenWidget(),
        ),
        FFRoute(
          name: 'FlightInstrumentTime',
          path: '/flightInstrumentTime',
          builder: (context, params) => const FlightInstrumentTimeWidget(),
        ),
        FFRoute(
          name: 'InstrumentApproachesScreen',
          path: '/instrumentApproachesScreen',
          builder: (context, params) => const InstrumentApproachesScreenWidget(),
        ),
        FFRoute(
          name: 'PilotFunctionScreen',
          path: '/pilotFunctionScreen',
          builder: (context, params) => const PilotFunctionScreenWidget(),
        ),
        FFRoute(
          name: 'SelectInstructorScreen',
          path: '/selectInstructorScreen',
          builder: (context, params) => const SelectInstructorScreenWidget(),
        ),
        FFRoute(
          name: 'RemarksAndEndorcement',
          path: '/remarksAndEndorcement',
          builder: (context, params) => const RemarksAndEndorcementWidget(),
        ),
        FFRoute(
          name: 'FlightLogSummary',
          path: '/flightLogSummary',
          builder: (context, params) => const FlightLogSummaryWidget(),
        ),
        FFRoute(
          name: 'Forum',
          path: '/forum',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Forum') : const ForumWidget(),
        ),
        FFRoute(
          name: 'JobScreen',
          path: '/jobScreen',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'JobScreen')
              : const JobScreenWidget(),
        ),
        FFRoute(
          name: 'ProfileScreen',
          path: '/profileScreen',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ProfileScreen')
              : const ProfileScreenWidget(),
        ),
        FFRoute(
          name: 'ForumDetail',
          path: '/forumDetail',
          builder: (context, params) => ForumDetailWidget(
            forumID: params.getParam(
              'forumID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'PostDetailScreen',
          path: '/postDetailScreen',
          builder: (context, params) => PostDetailScreenWidget(
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            hours: params.getParam(
              'hours',
              ParamType.String,
            ),
            content: params.getParam(
              'content',
              ParamType.String,
            ),
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            postID: params.getParam(
              'postID',
              ParamType.int,
            ),
            imageUrl: params.getParam(
              'imageUrl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'chatListScreen',
          path: '/chatListScreen',
          builder: (context, params) => const ChatListScreenWidget(),
        ),
        FFRoute(
          name: 'ChatMessages',
          path: '/chatMessages',
          builder: (context, params) => ChatMessagesWidget(
            senderid: params.getParam(
              'senderid',
              ParamType.String,
            ),
            senderuserName: params.getParam(
              'senderuserName',
              ParamType.String,
            ),
            currentUsername: params.getParam(
              'currentUsername',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'messages',
          path: '/messages',
          builder: (context, params) => const MessagesWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/landingView';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/Screenshot_2024-05-06_at_10.34.27_AM.png',
                        fit: BoxFit.cover,
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
