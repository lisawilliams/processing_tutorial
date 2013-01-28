import blprnt.nytimes.*;

// Line above imports a Processing library that makes it easier to deal with the API. 
// If you've downloaded a Processing sketch and can't get it to work, it's probably because
// you're missing a library.  Libraries are almost always imported/included right at the
// beginning of a piece of code.  If you see a line like this and think, hey, I don't
// remember downloading that... you might be able to get it running just by 
// Googling the name of the library, downloading it, and installing it.  

// define the size of the window we'll be putting stuff in
size(500, 200);

// background color of the window (black; grayscale values go from 0 (black) to 255 (white).
// You can also use RGB values

background(0);

// Let's put in our NYT Article Search API key.  TimesEngine.init is
// is a function in the blprnt.nytimes library that's already
// been written for us

TimesEngine.init(this, "04bcaa24ab54e8bb988c319fc5d21ab1:9:60388515");

// Now we'll use the library's built in "Times Article Search" routine
TimesArticleSearch mySearch = new TimesArticleSearch();

// Let's add some queries to our search
// Note that queries with more than one word must use the plus sign 

mySearch.addQueries("Obama");

// Let's tell it what date range we want to search in.  
// mySearch is a function from the blprnt.nytimes library, but
// "begin_date" and "end_date" are specific keys we can use with the NYT API.

mySearch.addExtra("begin_date", "20121006");
mySearch.addExtra("end_date", "20121106");

// RESULTS PLZ!!!
// This line creates a variable called "r."
// R stores the results of "mySearch.doSearch();"
TimesArticleSearchResult r = mySearch.doSearch();

// Print the string "Results about (keyword)
// total # of records that contain that name
// all r.total does is tell you the total number of mentions. 
println("Results about Obama " + r.total);

// Let's have a new query about somebody else
// First let's clear the queries
// All the other steps are the same

mySearch.clearQueries();
mySearch.addQueries("Romney");

//We do have a new variable here, r2 -- our variables can't have the same name.

TimesArticleSearchResult r2 = mySearch.doSearch();
println("Results about Romney: " + r2.total);

// Let's draw a bar chart

// Let's give it a label
fill(255);

// This puts the text 100 pixels from the left edge and 30 pixels from the top.
text("NYT Mentions of Obama & Romney in the last month before the Election", 100, 30);

// Bill Clinton bar

fill(232, 223, 162);

//  The rectangle below starts at 0 pixels from the left edge and 100 from the top edge. 
// it is 50 pixels tall, and we use r.total to say how long it is.  
// Note that I'm dividing r.total by 10 here.  Why?  Well, Processing is converting each
// mention to one pixel, and Bill Clinton was mentioned 2029 times. 
// My screen is only 1368 pixels wide!  So I divided both r.total (Bill Clinton) 
// and r2.total (Hillary Clinton) by 10. As long as you divide both by the same number
// they will still be appropriately proportional. 

rect(0, 100, (r.total/10), 50);


// Let's label it, otherwise nobody can tell what we're visualizing. 
// put the text we want in quotes and add r.total (the number of mentions)
// then the text is located 225 pixels from the left edge and 125 pixels from the top
text("Mentions of Obama " + r.total, 225, 125);

// Hillary Clinton bar
fill(13, 86, 162);


// Same as above, except the bar is only 50 pixels from the top; Bill's starts at 100
// pixels from the top.  
rect(0, 50, (r2.total/10), 50); 

// Same with labeling.  You can futz around with the last two values to get the 
// text to show up in the right place depending on how long your bar is. 

text("Mentions of Romney " + r2.total, 200, 75);



