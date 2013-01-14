// Drawing P5, the processing robot

// define the size of the window we'll be drawing in
size(720, 480);

// let's use smooth lines
smooth();

// define the width of the lines we'll draw with
strokeWeight(2);

// define the color of the background of the window
background(204);

// I have no idea what this function does but I'll find out
ellipseMode(RADIUS);

// Let's draw the neck.  

stroke(102); // set the stroke to gray

line(266, 257, 266, 162); // Left
line(276, 257, 276, 162); // Middle
line(286, 257, 286, 162); // Right

// Draw the antennae

line(276, 155, 246, 112); // Small  antenna
line(276, 155, 306, 56); // Tall antenna
line(276, 155, 342, 170); // Medium antenna

// Draw the body

noStroke(); // We're going to draw this shape without an outline
fill(102); // Set body color to gray.  Grayscale #'s go from 0 (black) to 255 (white). 
ellipse(264, 377, 33, 33); // Draw antigravity orb -- a circle with a center point 
// at 264 pixels from right edge and 377 from the top, with a diameter of 33 pixels

fill(0); // Set fill to black
rect(219, 257, 90, 120); // Draw the main body (in black)

fill(102); // Set fill to gray
rect(219, 274, 90, 6); // Draw gray stripe on the body 

// Let's draw the head

fill(0); // Set fill to black
ellipse(276, 155, 45, 45); // Head.  A circle 276 px from the left edg and 155 px from the top with a diameter of 45px

// Lets draw the big eye
fill(255); // Set fill to white
ellipse(288, 150, 14, 14); 

// Eyes without pupils look weird, let's add a pupil
fill(0); 
ellipse (288, 150, 3, 3); // note that the pupil's centerpoint is 288 X 150, just like the eye.  But the diameter is smaller, only 3px, while the eye is 14px

// This is science fiction, let's have some more eyes
fill(0); // black
ellipse(263, 148, 5, 5); // Small eye

// even more eyes! little sensor ones ringing the big one
fill(153);
ellipse(263, 148, 5, 5);
ellipse(296, 130, 4, 4);
ellipse(305, 162, 3, 3); 




