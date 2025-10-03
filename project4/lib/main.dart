import 'package:flutter/material.dart';

void main() {
  runApp(OneOnlyApp());
}

class OneOnlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keshi - Skeletons',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurpleAccent,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            height: 1.5,
          ),
        ),
      ),
      home: SongPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  final String title = "Skeletons";
  final String artist = "keshi";

  final String lyrics = '''
Stressed out
Feeling lost and I don't know what to do now
What I chose ain't really gonna work out
Fallin' six feet underneath the floor now
Think I'm gonna tap out (ooh-ah, ooh-ah)

Feel bad, go to bed
Wake up even worse yeah
So sad, in my head
Feeling like a curse
I need medicine, medicine, medicine
All my skeletons out for the taking (ooh-ahh)
Yea, I don't even know if I'ma make it
I'm afraid of myself and I hate it
All my skeletons out for the taking
Somebody take 'em

I wanna run away, the day to day
Is taking its toll on me
And I'm tearing at the seams
Throw it all away
Give a fuck about what they say
I gotta disagree
This ain't really fun for me

Feel bad, go to bed
Wake up even worse yeah
So sad, in my head
Feeling like a curse
I need medicine, medicine, medicine
All my skeletons out for the taking (ooh-ah)
Yeah, I don't even know if I'ma make it
I'm afraid of myself and I hate it
All my skeletons out for the taking
Somebody take 'em
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$title - $artist'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 8),
            Text('by $artist', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),

            
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  lyrics,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
