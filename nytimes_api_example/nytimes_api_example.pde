import blprnt.nytimes.*;

// Line above imports a Processing library that makes it easier to deal with the API

// define the size of the window we'll be putting stuff in
size(450, 350);

// background color of the window (white)
background(255);

// Let's put in our NYT Article Search API key.  TimesEngine.init is
// is a function in the blprnt.nytimes library that's already
// been written for us

TimesEngine.init(this, "04bcaa24ab54e8bb988c319fc5d21ab1:9:60388515");

// Now we'll use the library's built in "Times Article Search" routine
TimesArticleSearch mySearch = new TimesArticleSearch();

// Let's add some queries to our search
mySearch.addQueries("Averill+Linderman");

// Let's tell it what date range we want to search in.  
// mySearch is a function from the blprnt.nytimes library, but
// "begin_date" and "end_date" are specific keys we can use with the NYT API.
mySearch.addExtra("begin_date", "20110101");
mySearch.addExtra("end_date" , "20130115");

// RESULTS PLZ!!!
TimesArticleSearchResult r = mySearch.doSearch();

// Print the string "Results about Averill Linderman," and then the
// total # of records that contain that name
println("Results about Averill Linderman " + r.total);

// Let's have a new query about somebody else
// First let's clear the queries
// All the other steps are the same

mySearch.clearQueries();
mySearch.addQueries("Lana+Turner");
TimesArticleSearchResult r2 = mySearch.doSearch();
println("Lana Turner: " + r2.total);

// Let's draw a bar chart

// Let's give it a label
fill(0);
text("NYT Mentions 2012", 100, 30);

// Averill bar
fill(144,13,162);
rect(0,100,(r.total*2), 50);
text("Mentions of Averill Linderman " + r.total , 100, 125);

// Lana Turner bar
fill(13,86,162);
rect(0,50,(r2.total*2),50); 
text("Mentions of Lana Turner " + r2.total , 100, 75);




