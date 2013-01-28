
// java.util is a library that has very basic Java functions like "Date" and "Time."
import java.util.*;

//Build an ArrayList to hold all of the words that we get from the imported tweets
// I'm sure most of you know what a variable is.  For instance, name = Lisa.  
// You can think of an array as being a little bit like an ice cube tray, where each
// square holds one value of a set of variables. 
// For instance, you might have an array called "US States" or "Months of Year"
// In this case, we're importing lots of tweets that are related to a search term.
// Then we're breaking down those tweets into individual words.  All of those words will
// go into an array called "words." 

ArrayList<String> words = new ArrayList();
 
void setup() {
  //Set the size of the stage, and the background to black.
  size(1300,768);
  background(0);
  smooth();
  
  //Credentials
  
 // You'll notice that Twitter uses a much more complicated authentication system than 
 // The New York Times does.  With the New York Times API, you just need one
 // unique API key.  Twitter has a higher level of security simply because Twitter
 // allows developers to access a Twitter user's account data; anything we get from
 // The New York Times isn't personal to any reader of the Times. 
 // The authentication system Twitter users is called OAuth, (for Open Authorization)
 // and instead of one key, you have a series of one to eight keys.  
 // Like the NYTimes, you apply for a key.  Don't do that this time -- 
 // just use these keys.  If it doesn't work, please feel free to post a note
 // in the Get Help thread and I will put up instructions on how to generate your 
 // own Twitter API/OAuth keys.  
 
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey("47r17EAnQcZ7Qds0hRxjLA");
  cb.setOAuthConsumerSecret("x64qOSXrVnrnbHk5JcsxDcPf8Bu3PIvb5A3WCjFOc");
  cb.setOAuthAccessToken("852241-WKgFQi7mm7bXPlpWasy3dkCQHhDNQmsIJ3if5FY18");
  cb.setOAuthAccessTokenSecret("a1rx15e6ugYsLeqVhb7jsiFLCWeOB6yyhtN6DXXRUVQ");
 
  //Make the twitter object and prepare the query
  // On the second line, put a word, or a hashtag, of your choice
  Twitter twitter = new TwitterFactory(cb.build()).getInstance();
  Query query = new Query("douthat");
  query.setRpp(100);
 
  //Try making the query request.
  try {
    QueryResult result = twitter.search(query);
    ArrayList tweets = (ArrayList) result.getTweets();
 
    for (int i = 0; i < tweets.size(); i++) {
      Tweet t = (Tweet) tweets.get(i);
      String user = t.getFromUser();
      String msg = t.getText();
      Date d = t.getCreatedAt();
      println("Tweet by " + user + " at " + d + ": " + msg);
       
      //Break the tweet into words
      String[] input = msg.split(" ");
      for (int j = 0;  j < input.length; j++) {
       //Put each word into the words ArrayList
       words.add(input[j]);
      }
    };
  }
  catch (TwitterException te) {
    println("Couldn't connect: " + te);
  };
}
 
void draw() {
  //Draw a faint black rectangle over what is currently on the stage so it fades over time.
 // I haven't played around with this much, but playing with the variables below will
 // let you play with the rate things appear and fade out, color, size, etc. 
 
  fill(0,1);
  rect(0,0,width,height);
   
  //Draw a word from the list of words that we've built
  int i = (frameCount % words.size());
  String word = words.get(i);
   
  //Put it somewhere random on the stage, with a random size and colour
  fill(255,random(50,150));
  textSize(random(10,30));
  text(word, random(width), random(height));
}

// Note that there's a window in the Processing editor below the one you type in.
// It will give you the raw output of any data you're getting out of your program. 
// In this case, it will give you a raw list of tweets.  It's interesting to look at!
