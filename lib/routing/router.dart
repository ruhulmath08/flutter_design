import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';
import 'package:flutter_design/screens/bloc_pattern/bloc_pattern.dart';
import 'package:flutter_design/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_design/screens/collapsetoolbar/collapse_toolbar.dart';
import 'package:flutter_design/screens/different_button/different_button.dart';
import 'package:flutter_design/screens/different_button/radio_button/RadioButtonScreen.dart';
import 'package:flutter_design/screens/different_button/raised_button/raised_button.dart';
import 'package:flutter_design/screens/different_button/switch_button/switch_button.dart';
import 'package:flutter_design/screens/different_button/toggle_button/toggle_button.dart';
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
import 'package:flutter_design/screens/list_view/expandable_list_view_with_card/expandable_list_view_with_card.dart';
import 'file:///C:/Users/HP/Desktop/flutter_app/flutter_design/lib/screens/list_view/expandable_list_view/expandable_list_view.dart';
import 'package:flutter_design/screens/list_view/flutter_list_view.dart';
import 'package:flutter_design/screens/login/login_screen.dart';
import 'package:flutter_design/screens/undefined/undefined_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //login screen
    case LOGIN_VIEW_ROUTE:
      var loginPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => LoginView(
          argument: loginPageTitle,
        ),
      );

    //home screen
    case HOME_VIEW_ROUTE:
      var loginHome = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => HomeView(
          argument: loginHome,
        ),
      );

    /*--------------------------------- Default Button : Start---------------------------------*/
    case DIFFERENT_BUTTON_ROUTE:
      return MaterialPageRoute(
        builder: (context) => DifferentButtonScreen(
          title: DIFFERENT_BUTTON_NAME,
        ),
      );

    //raised button
    case RAISED_BUTTON_ROUTE:
      return MaterialPageRoute(
        builder: (context) => RaisedButtonScreen(
          title: RAISED_BUTTON_NAME,
        ),
      );

    //radio button
    case RADIO_BUTTON_ROUTE:
      return MaterialPageRoute(
        builder: (context) => RadioButtonScreen(
          title: RADIO_BUTTON_NAME,
        ),
      );

    //toggle button
    case TOGGLE_BUTTON_ROUTE:
      return MaterialPageRoute(
        builder: (context) => ToggleButtonScreen(
          title: TOGGLE_BUTTON_NAME,
        ),
      );

    //switch button
    case SWITCH_BUTTON_ROUTE:
      return MaterialPageRoute(
        builder: (context) => SwitchButtonScreen(
          title: SWITCH_BUTTON_NAME,
        ),
      );
    /*--------------------------------- Default Button : End---------------------------------*/

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

    case EXPANDABLE_LIST_VIEW_ROUTE:
      var expandableListPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => MyExpandableListView(
          title: expandableListPageTitle,
        ),
      );

    case EXPANDABLE_LIST_VIEW_WITH_CARD_ROUTE:
      var expandableListWithCardPageTitle = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => ExpandableListViewWithCard(
          title: expandableListWithCardPageTitle,
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
