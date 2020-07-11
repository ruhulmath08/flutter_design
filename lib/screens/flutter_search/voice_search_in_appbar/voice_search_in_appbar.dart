import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as words;
import 'package:flutter/rendering.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_recognition/speech_recognition.dart';

class VoiceSearchInAppBar extends StatefulWidget {
  final String title;

  VoiceSearchInAppBar({Key key, this.title}) : super(key: key);

  @override
  _VoiceSearchInAppBarState createState() => new _VoiceSearchInAppBarState();
}

class _VoiceSearchInAppBarState extends State<VoiceSearchInAppBar> {
  //speech
  SpeechRecognition _speech;
  bool _speechRecognitionAvailable = false;
  bool _isListening = false;

  String transcription = '';

  final List<String> kWords;
  _SearchAppBarDelegate _searchDelegate;

  //Initializing with sorted list of english words
  _VoiceSearchInAppBarState()
      : kWords = List.from(Set.from(words.all))
          ..sort(
            (w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase()),
          ),
        super();

  @override
  void initState() {
    super.initState();

    //Initializing search delegate with sorted list of English words
    _searchDelegate = _SearchAppBarDelegate(kWords);
    //activateSpeechRecognizer();
    requestPermission();
  }

  //request permission for microphone
  void requestPermission() async {
//    PermissionStatus permission = await PermissionHandler()
//        .checkPermissionStatus(PermissionGroup.microphone);
//
//    if (permission != PermissionStatus.granted) {
//      await PermissionHandler()
//          .requestPermissions([PermissionGroup.microphone]);
//    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void activateSpeechRecognizer() {
    requestPermission();

    _speech = new SpeechRecognition();
    _speech.setAvailabilityHandler(onSpeechAvailability);
    _speech.setCurrentLocaleHandler(onCurrentLocale);
    _speech.setRecognitionStartedHandler(onRecognitionStarted);
    _speech.setRecognitionResultHandler(onRecognitionResult);
    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
    _speech
        .activate()
        .then((res) => setState(() => _speechRecognitionAvailable = res));
  }

  void start() => _speech
      .listen(locale: 'en_US')
      .then((result) => print('Started listening => result $result'));

  void cancel() =>
      _speech.cancel().then((result) => setState(() => _isListening = result));

  void stop() => _speech.stop().then((result) {
        setState(() => _isListening = result);
      });

  void onSpeechAvailability(bool result) =>
      setState(() => _speechRecognitionAvailable = result);

  void onCurrentLocale(String locale) =>
      setState(() => print("current locale: $locale"));

  void onRecognitionStarted() => setState(() => _isListening = true);

  void onRecognitionResult(String text) {
    setState(() {
      transcription = text;
      showSearchPage(context, _searchDelegate, transcription);
      stop();
    });
  }

  void onRecognitionComplete() => setState(() => _isListening = false);

  Widget _buildVoiceInput({String label, VoidCallback onPressed}) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: <Widget>[
            FlatButton(
              child: Text(
                label,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: onPressed,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
          actions: <Widget>[
            _buildVoiceInput(
              onPressed: _speechRecognitionAvailable && !_isListening
                  ? () => start()
                  : () => stop(),
              label: _isListening ? 'Listening...' : '',
            ),

            //Adding the search widget in AppBar
            IconButton(
              tooltip: 'Search',
              icon: Icon(Icons.search),
              onPressed: () {
                showSearchPage(context, _searchDelegate, transcription);
              },
            )
          ],
        ),
        body: Scrollbar(
          ////Displaying all English words in list in app's main page
          child: ListView.builder(
            itemCount: kWords.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(kWords[index]),
              onTap: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Clicked the Search action'),
                    action: SnackBarAction(
                      label: 'Search',
                      onPressed: () {
                        showSearchPage(context, _searchDelegate, transcription);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}

//Shows Search result
void showSearchPage(BuildContext context, _SearchAppBarDelegate searchDelegate,
    String transcription) async {
  final String selected = await showSearch<String>(
    context: context,
    delegate: searchDelegate,
    query: transcription,
  );

  if (selected != null) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Your Word Choice: $selected'),
      ),
    );
  }
}

//Search delegate
class _SearchAppBarDelegate extends SearchDelegate<String> {
  final List<String> _words;
  final List<String> _history;
  final String preQuery;

  _SearchAppBarDelegate(List<String> words)
      : _words = words,
        //pre-populated history of words
        _history = <String>['apple', 'orange', 'banana', 'watermelon'],
        preQuery = '',
        super();

  //Setting leading icon for the search bar.
  //Clicking on back arrow will take control to main page
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        this.close(context, null);
      },
    );
  }

  //Building page to populate search results,
  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('You selecting word is '),
            GestureDetector(
              onTap: () {
                //Define your action when clicking on result item.
                //In this example, it simply closes the page
                this.close(context, this.query);
              },
              child: Text(
                this.query,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Suggestions list while typing search query - this.query.
  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = this.query.isEmpty
        ? _history
        : _words.where((word) => word.startsWith(query));

    return _WordSuggestionList(
        query: this.query,
        suggestions: suggestions.toList(),
        onSelected: (String suggestions) {
          this.query = suggestions;
          this._history.insert(0, suggestions);
          showResults(context);
        });
  }

  //Actions buttons at the right of search bar
  @override
  List<Widget> buildActions(BuildContext context) {
    List<Widget> actions = List();

    if (query.isNotEmpty) {
      actions.add(
        IconButton(
          tooltip: 'Clear',
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
      );
    }

    return actions;
  }
}

// Suggestions list widget displayed in the search page.
class _WordSuggestionList extends StatelessWidget {
  const _WordSuggestionList({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];

        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          //Highlight the substring that matched the query,
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              style: TextStyle(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                  style: textTheme,
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}

/*
* Link: https://ptyagicodecamp.github.io/implementing-voice-input-for-search-action-in-appbar.html
* YouTube: https://www.youtube.com/watch?v=FefiyOjHvLk
* */
