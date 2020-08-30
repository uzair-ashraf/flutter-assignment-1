import 'package:flutter/material.dart';

import './quote.dart';
import './get-quote-button.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int _currentQuoteIndex = 0;
  List<String> _quoteList = [
    "“The Way Get Started Is To Quit Talking And Begin Doing.” – Walt Disney",
    "“The Pessimist Sees Difficulty In Every Opportu…rtunity In Every Difficulty.” – Winston Churchill",
    "“Don’t Let Yesterday Take Up Too Much Of Today.” – Will Rogers",
    "“You Learn More From Failure Than From Success.…It Stop You. Failure Builds Character.” – Unknown",
    "“It’s Not Whether You Get Knocked Down, It’s Wh… Get Up.” – Inspirational Quote By Vince Lombardi",
    "“If You Are Working On Something That You Reall…To Be Pushed. The Vision Pulls You.” – Steve Jobs",
    "“People Who Are Crazy Enough To Think They Can …e The World, Are The Ones Who Do.” – Rob Siltanen",
    "“Failure Will Never Overtake Me If My Determination To Succeed Is Strong Enough.” – Og Mandino",
    "“Entrepreneurs Are Great At Dealing With Uncert…hat’s The Classic Entrepreneur.” – Mohnish Pabrai",
    "“We May Encounter Many Defeats But We Must Not Be Defeated.” – Maya Angelou",
    "“Knowing Is Not Enough; We Must Apply. Wishing…Enough; We Must Do.” – Johann Wolfgang Von Goethe",
    "“Imagine Your Life Is Perfect In Every Respect; What Would It Look Like?” – Brian Tracy",
    "“We Generate Fears While We Sit. We Overcome Them By Action.” – Dr. Henry Link",
    "“Whether You Think You Can Or Think You Can’t, You’re Right.” – Quote By Henry Ford",
    "“Security Is Mostly A Superstition. Life Is Ei…venture Or Nothing.” – Life Quote By Helen Keller",
    "“The Man Who Has Confidence In Himself Gains The Confidence Of Others.” – Hasidic Proverb",
    "“The Only Limit To Our Realization Of Tomorrow…y.” – Motivational Quote By Franklin D. Roosevelt",
    "“Creativity Is Intelligence Having Fun.” – Albert Einstein",
    "“What You Lack In Talent Can Be Made Up With D…ustle And Giving 110% All The Time.” – Don Zimmer",
    "“Do What You Can With All You Have, Wherever You Are.” – Theodore Roosevelt",
    "“Develop An ‘Attitude Of Gratitude’. Say Thank…y Do For You.” – Encouraging Quote By Brian Tracy",
    "“You Are Never Too Old To Set Another Goal Or To Dream A New Dream.” – C.S. Lewis",
    "“To See What Is Right And Not Do It Is A Lack Of Courage.” – Confucius",
    "“Reading Is To The Mind, As Exercise Is To The Body.” – Brian Tracy",
    "“Fake It Until You Make It! Act As If You Had …ire Until It Becomes Your Reality.” – Brian Tracy",
    "“The Future Belongs To The Competent. Get Good…ter, Be The Best!” – Success Quote By Brian Tracy",
    "“For Every Reason It’s Not Possible, There Are…ame Circumstances And Succeeded.” – Jack Canfield",
    "“Things Work Out Best For Those Who Make The B…Things Work Out.” – Positive Quote By John Wooden",
    "“A Room Without Books Is Like A Body Without A Soul.” – Marcus Tullius Cicero",
    "“I Think Goals Should Never Be Easy, They Shou… Are Uncomfortable At The Time.” – Michael Phelps",
    "“One Of The Lessons That I Grew Up With Was To…s Distract You From Your Goals.” – Michelle Obama",
    "“Today’s Accomplishments Were Yesterday’s Impossibilities.” – Robert H. Schuller",
    "“The Only Way To Do Great Work Is To Love What…It Yet, Keep Looking. Don’t Settle.” – Steve Jobs",
    "“You Don’t Have To Be Great To Start, But You Have To Start To Be Great.” – Zig Ziglar",
    "“A Clear Vision, Backed By Definite Plans, Gi… Of Confidence And Personal Power.” – Brian Tracy",
    "“There Are No Limits To What You Can Accomplis…ts You Place On Your Own Thinking.” – Brian Tracy",
    "“Integrity Is The Most Valuable And Respected Quality Of Leadership. Always Keep Your Word.”",
    "“Leadership Is The Ability To Get Extraordinary Achievement From Ordinary People”",
    "“Leaders Set High Standards. Refuse To Tolerate Mediocrity Or Poor Performance”",
    "“Clarity Is The Key To Effective Leadership. What Are Your Goals?”",
    "“The Best Leaders Have A High Consideration Factor. They Really Care About Their People”",
    "“Leaders Think And Talk About The Solutions. Followers Think And Talk About The Problems.”",
    "“The Key Responsibility Of Leadership Is To Th…About The Future. No One Else Can Do It For You.”",
    "“The Effective Leader Recognizes That They Are…Their People Than They Are On Them. Walk Softly.”",
    "“Leaders Never Use The Word Failure. They Look Upon Setbacks As Learning Experiences.”",
    "“Practice Golden Rule Management In Everything…age Others The Way You Would Like To Be Managed.”",
    "“Superior Leaders Are Willing To Admit A Mista…he Original Decision Turns Out To Be A Poor One.”",
    "“Leaders Are Anticipatory Thinkers. They Consi…Consequences Of Their Behaviors Before They Act.”",
    "“The True Test Of Leadership Is How Well You Function In A Crisis.”",
    "“Leaders Concentrate Single-Mindedly On One Th… Thing, And They Stay At It Until It’s Complete.”",
    "“The Three ‘C’s’ Of Leadership Are Consideration, Caring, And Courtesy. Be Polite To Everyone.”",
    "“Respect Is The Key Determinant Of High-Perfor…le Respect You Determines How Well They Perform.”",
    "“Leadership Is More Who You Are Than What You Do.”",
    "“Entrepreneurial Leadership Requires The Abili…o Move Quickly When Opportunity Presents Itself.”",
    "“Leaders Are Innovative, Entrepreneurial, And …re-Oriented. They Focus On Getting The Job Done.”",
    "“Leaders Are Never Satisfied; They Continually Strive To Be Better.”"
  ];
  void _handlePressed() {
    setState(() {
      if (this._currentQuoteIndex == this._quoteList.length - 1) {
        this._currentQuoteIndex = 0;
      } else {
        this._currentQuoteIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Motivation Quote Box'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Quote(this._quoteList[this._currentQuoteIndex]),
            QuoteButton(this._handlePressed)
          ],
        ),
      ),
    );
  }
}
