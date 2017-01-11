// Jonah Gehrlein
// January 11, 2017

size(500, 1000);
smooth();
strokeWeight(2);
background(204);
ellipseMode(RADIUS);
int neckHeight = -25;
int bodyHeight = 250;
int bodyLength = 100;
// Neck
stroke(102); // Set stroke to gray
line(266, 257 +bodyHeight, 266, 162 +neckHeight); // Left
line(276, 257 +bodyHeight, 276, 162 +neckHeight); // Middle
line(286, 257 +bodyHeight, 286, 162 +neckHeight); // Right
// Antennae
line(276, 155 +neckHeight, 246, 112 +neckHeight); // Small
line(276, 155 +neckHeight, 306, 56 +neckHeight); // Tall
line(276, 155 +neckHeight, 342, 170 +neckHeight); // Medium
// Body
noStroke(); // Disable stroke
fill(102); // Set fill to gray
ellipse(264, 377 +bodyHeight+bodyLength, 33, 33); // Antigravity orb
fill(0); // Set fill to black
rect(219, 257 +bodyHeight, 90, 120 +bodyLength); // Main body
fill(102); // Set fill to gray
rect(219, 274 +bodyHeight, 90, 6); // Gray stripe
// Head
fill(0); // Set fill to black
ellipse(276, 155 +neckHeight, 45, 45); // Head
fill(255); // Set fill to white
ellipse(288, 150 +neckHeight, 14, 14); // Large eye
fill(0); // Set fill to black
ellipse(288, 150 +neckHeight, 3, 3); // Pupil
fill(153); // Set fill to light gray
ellipse(263, 148 +neckHeight, 5, 5); // Small eye 1
ellipse(296, 130 +neckHeight, 4, 4); // Small eye 2
ellipse(305, 162 +neckHeight, 3, 3); // Small eye 3