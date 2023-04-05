PImage pala ; 

void setup(){
 background(255);
  size(800,400);
  pala = loadImage("pala2.jpg");
 pala.resize(400, 400);
}
  
  void draw(){
image(pala,0,0);


stroke(110,110,110);
strokeWeight(13);
line(470,290,570,60);//linea larga 

//cabo d pala 
stroke(40,40,40);
line(500,222,467,295);
strokeWeight(14);
stroke(235,200,217);
line(549,110,500,220);
stroke(200,200,0);
line(576,45,553,100);



strokeWeight(9);
fill(255);
stroke(200,200,0);//triangulo de pala
triangle(565,75,554,35,600,52);
 
 strokeWeight(12);
line(495,227,500,229);

strokeWeight(9); 
stroke(40,40,40);



beginShape();

strokeWeight(4);


 
stroke(30,30,30);
fill(70,70,70);

 
vertex(460,269);
vertex(449,322);
vertex(486,280);
 

vertex(427,254);
vertex(477,252);

vertex(493,257);
vertex(522,287);

vertex(423,256);
vertex(387,340);
vertex(498,376);
vertex(526,292);



endShape();


  }
   void mousePressed(){
    println("vertex("+mouseX+","+mouseY+");"); 
    
   }
