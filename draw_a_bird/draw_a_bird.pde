// This Processing sketch draws the heads of two birds. 
// We use vertex() to define points, much like a Connect-The-Dots game.  Each vertex() statement is one
// "dot."
// From "Getting Started With Processing," by Casey Reas and Ben Fry. 
// Over the top comments and color changes by me, Lisa Williams, as a learning exercise. 

size(480, 120);
background(255); // Those gray backgrounds are so last year.  Let's start with a nice fresh white.
smooth();

// Drawing the bird on the left...

beginShape();  // Beginning our game of Connect-The-Dots

fill(11, 37, 178);  // Boring birds are boring, so let's make this one blue
// with RGB values of R(ed) = 11, G(reen) = 37, and B(lue) = 178

vertex(50, 120); // First dot in our game, bottom leftmost point. 
vertex(100, 90); // Second dot.  
vertex(110, 60); // 
vertex(80, 20); 
vertex(210, 60); 
vertex(160, 80);
vertex(200, 90);
vertex(140, 100);
vertex(130, 120);

endShape(); // Shape won't be drawn without this. 

fill(247, 110, 30);  // Let's make our bird's eyes orange with RGB values of R(ed) = 247, G(reen) = 110, B(lue) = 30

ellipse (155, 60, 8, 8);  // Animals without eyes are kinda creepy, so let's draw a circle 155 pixels 
// from the left and 60 pixels from the top, 8 pixels in diameter. 


// Let's give our bird a friend.  OR A RIVAL!!!!

beginShape(); 

fill(247, 110, 30); // Let's make Rival Bird's body orange in contrast to our first bird. 

// Let's draw our bird, defining each dot in our dot-to-dot drawing of him.  

vertex(370, 120);
vertex(360, 90); 
vertex(290, 80);
vertex(340, 70);
vertex(280, 50);
vertex(420, 10);
vertex(390, 50);
vertex(410, 90);
vertex(460, 120);

endShape(); // because if we don't it won't draw the points we just outlined above

// Animals without eyes are kind of creepy, so let's give him some.  

fill(11, 37, 178); // Let's give our rival bird blue eyes.  

ellipse(345, 50, 10, 10); // The eye is 345 pixels from the left edge and 50 pixels from the top, and 
// a little larger than the other bird's at 10 pixels in diameter.  


