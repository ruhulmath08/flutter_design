import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';
import 'package:flutter_design/screens/bloc_pattern/bloc_pattern.dart';
import 'package:flutter_design/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_design/screens/collapsetoolbar/collapse_toolbar.dart';
import 'package:flutter_design/screens/dropdown/custom_dropdown.dart';
import 'package:flutter_design/screens/flutter_card/card_inside_list/card_inside_list.dart';
import 'package:flutter_design/screens/flutter_card/card_one/card_one.dart';
import 'package:flutter_design/screens/flutter_card/flutter_card.dart';
import 'package:flutter_design/screens/flutter_hero_widget/flutter_hero_widget.dart';
import 'package:flutter_design/screens/flutter_hero_widget/hero_animation/flutter_hero_animation.dart';
import 'package:flutter_design/screens/flutter_library/flutter_carousels/basic_carousels/basic_carouse.dart';
import 'package:flutter_design/screens/flutter_library/flutter_carousels/flutter_carousels.dart';
import 'package:flutter_design/screens/flutter_library/flutter_library.dart';
import 'package:flutter_design/screens/flutter_library/my_introduction_screen/my_introduction_screen.dart';
import 'package:flutter_design/screens/flutter_permission/flutter_permission.dart';
import 'package:flutter_design/screens/flutter_search/flutter_search.dart';
import 'package:flutter_design/screens/flutter_search/search_in_appbar/search_in_appbar.dart';
import 'package:flutter_design/screens/flutter_search/voice_search_in_appbar/voice_search_in_appbar.dart';
import 'package:flutter_design/screens/home/home_screen.dart';
import 'package:flutter_design/screens/list_view/dismissible_list_view/dismissible_list_view.dart';
import 'package:flutter_design/screens/list_view/flutter_list_view.dart';
import 'package:flutter_design/screens/login/login_screen.dart';
import 'package:flutter_design/screens/undefined/undefined_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME_VIEW_ROUTE:
      var loginHome = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => HomeView(
          argument: loginHome,
        ),
      );

    case LOGIN_VIEW_ROUTE:
      var loginPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => LoginView(
          argument: loginPageTitle,
        ),
      );

    case COLLAPSE_TOOLBAR_VIEW_ROUTE:
      var collapseToolBarPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => CollapseToolbar(
          name: collapseToolBarPageTitle,
        ),
      );

    case BOTTOM_NAVIGATION_VIEW_ROUTE:
      var bottomNavigationPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => MyBottomNavigationBar(
          name: bottomNavigationPageTitle,
        ),
      );

    case FLUTTER_CARD_VIEW_ROUTE:
      var cardViewPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterCard(
          name: cardViewPageTitle,
        ),
      );

    case CARD_ONE_VIEW_ROUTE:
      var cardOneViewPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => CardOne(
          name: cardOneViewPageTitle,
        ),
      );

//    case CUSTOM_DIALOG_VIEW_ROUTE:
//      var customDialogViewArgument = settings.arguments;
//      return MaterialPageRoute(
//        builder: (context) => FlutterCustomDialog(),
//      );

    case CUSTOM_DROP_DOWN_VIEW_ROUTE:
      var customDropdownPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => CustomDropdown(
          title: customDropdownPageTitle,
        ),
      );

    /*--------------------------------- Flutter ListView ---------------------------------*/
    case FLUTTER_LIST_VIEW_ROUTE:
      var flutterListViewPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterListView(
          title: flutterListViewPageTitle,
        ),
      );

    case CARD_INSIDE_LIST_VIEW_ROUTE:
      var cardInsideListPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => CardInsideList(
          name: cardInsideListPageTitle,
        ),
      );

    case DISMISSIBLE_LIST_VIEW_ROUTE:
      var dismissibleListViewPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => DismissibleListView(
          title: dismissibleListViewPageTitle,
        ),
      );

    /*--------------------------------- Flutter Search ---------------------------------*/
    case FLUTTER_SEARCH_VIEW_ROUTE:
      var flutterSearchViewPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterSearch(
          title: flutterSearchViewPageTitle,
        ),
      );

    case SEARCH_IN_APPBAR_VIEW_ROUTE:
      var searchInAppBarPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => SearchInAppBar(
          title: searchInAppBarPageTitle,
        ),
      );

    case VOICE_SEARCH_IN_APPBAR_VIEW_ROUTE:
      var voiceSearchInAppBarPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => VoiceSearchInAppBar(
          title: voiceSearchInAppBarPageTitle,
        ),
      );

    /*--------------------------------- Flutter Permission ---------------------------------*/
    case FLUTTER_PERMISSION_VIEW_ROUTE:
      var flutterPermissionPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterPermission(
          title: flutterPermissionPageTitle,
        ),
      );

    /*--------------------------------- Flutter Library ---------------------------------*/
    case FLUTTER_LIBRARY_VIEW_ROUTE:
      var flutterLibraryPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterLibrary(
          title: flutterLibraryPageTitle,
        ),
      );

    case INTRODUCTION_SCREEN_VIEW_ROUTE:
      var introductionScreenPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => MyIntroductionScreen(
          title: introductionScreenPageTitle,
        ),
      );

    /*--------------------------------- Flutter HeroWidget ---------------------------------*/
    case FLUTTER_HERO_WIDGET_VIEW_ROUTE:
      var flutterHeroWidgetPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterHeroWidget(
          title: flutterHeroWidgetPageTitle,
        ),
      );

    case FLUTTER_HERO_ANIMATION_VIEW_ROUTE:
      var flutterHeroHeroAnimationPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterHeroAnimation(
          title: flutterHeroHeroAnimationPageTitle,
        ),
      );

    case FLUTTER_CAROUSELS_VIEW_ROUTE:
      var flutterCarouselsPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => FlutterCarousels(
          title: flutterCarouselsPageTitle,
        ),
      );

    /*--------------------------------- Flutter Carousels ---------------------------------*/
    case BASIC_CAROUSELS_VIEW_ROUTE:
      var basicCarouselViewRoute = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => BasicCarouse(
          title: basicCarouselViewRoute,
        ),
      );

    /*--------------------------------- Flutter BLoC pattern ---------------------------------*/
    case FLUTTER_BLOC_PATTERN:
      var blocPatternViewRoute = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => BlocPattern(
          title: blocPatternViewRoute,
        ),
      );

    /*--------------------------------- UndefinedSearch ---------------------------------*/
    default:
      var undefinedViewArgument = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => UndefinedScreen(
          name: undefinedViewArgument,
        ),
      );
  }
}
