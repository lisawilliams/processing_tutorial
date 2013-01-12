// Demonstrates overlapping circles
// Demonstrates that you can draw shapes 

size(480, 120);  // sets size of window to 480 by 120 pixels

smooth();  // makes lines smooth rather than "pixelly"

background(0); // Sets the background of the window to black
strokeWeight(12); // make the stroke weight "heavier"

// for reasons I don't understand, strokeWeight is only affecting 2 of the 3 circles 

fill(204); // Light gray
ellipse(132, 82, 200, 200); // Light gray circle

noFill();  // turn off fill
stroke(255);  // set the line color to white

//fill(153);  // Medium gray
ellipse(228, -16, 200, 200);  // Medium gray circle

fill(102); // Dark gray
ellipse(268, 118, 200, 200); // Dark gray circle

