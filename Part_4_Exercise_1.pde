PFont font;
void setup() {
size(480, 240);

}
void draw() {
background(102);
textFont(loadFont("PerpetuaTitlingMT-Light-48.vlw"));
fill(#1CD354);
text("Jonah Gehrlein", 26, 50);
textFont(loadFont("AGaramondPro-Italic-48.vlw"));
fill(#D80D0D);
text("Jonah Gehrlein", 26, 100);
}