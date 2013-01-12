// Drawing an arrow using Processing
// From "Getting Started With Processing," Casey Reas and Ben Fry
// Comments by me, Lisa Williams
// When I learn something I like to do insanely over the top comments
// commenting each line of code so I really understand what it does. 

size(480, 180);  // size of window that I will draw the arrow in
beginShape();  // Well, okay, I will begin a shape! 

// beginShape is like the beginning of a game of Connect-The-Dots -- each of the following vertex() 
// statements is one of the dots.  A vertex() statement like this one -- vertex (10, 100) would be a dot 
// ten pixels from the left edge of the drawing window and 100 pixels from the top of the drawing window.


vertex(180, 82);  // a point 100 pixels from the left edge of the window and 82 pixels from the top
vertex(207, 36);  // a point 207 pixels from the left edge and 36 pixels from the top
vertex(214, 63);  // a point 214 pixels from the left edge and 63 pixels from the top
vertex(407, 11);  // a point 407 pixels from the left edge and 11 pixels from the top
vertex(412, 30);  // a point 412 pixels from the left edge and 31 pixels from the top
vertex(219, 82);  // a point 219 pixels from the left edge and 82 pixels from the top
vertex(226, 109);  // a point 226 pixels from the left edge and 109 pixels from the top

// endShape() is the end of our game of Connect-The-Dots.  But unless you use endShape(CLOSE), 
// you'll notice there's no line between the last dot and the first dot, where we started.  
// Using CLOSE tells Processing to "close" the shape automatically, drawing a line from the first 
// "dot" to the last dot.  

endShape(CLOSE); // Closes off the outline of the shape automatically
