int ytiges = 585;
int taillegauche = 0;
int tailledroite = 0;
int ydroite = 530;
int ygauche = 460;

void setup() {
size(1300,1000);
frameRate(30);
}

void draw() {
  background(#e8e3da);
  stroke(#00ff00);
  fill(#00ff00);
  strokeWeight(4);
  line(625, ytiges, 625, 700); // tiges
  strokeWeight(1);
  
  fill(#FF5833);
  stroke(#FF5833);
  quad(450, 600, 800, 600, 750, 800, 500, 800); // pot
  rect(440, 585, 370, 30);
  
  if ( ytiges > 300 ) {
    ytiges = ytiges-5;
  } else {
    dessineFleur();
  }
   
  stroke(#00ff00);
  fill(#00ff00);
  if ( ytiges <= 460 ) {
   if ( taillegauche < 100) {
     taillegauche = taillegauche+2;
   } else{
   if (ygauche >= 400){
     ygauche -= 1;
     }  
   }
    ellipse(574, ygauche, taillegauche, 30);       // petale gauche
 }
  
  
  if ( ytiges <= 530 ){
    if ( tailledroite < 100) {
      tailledroite += 2;
    } else {
    if (ydroite >= 500) {
      ydroite -= 1;
  }
    }
    
    ellipse(674, ydroite, tailledroite, 30);       // petale droite
  }
  
  soleil();
 linesoleil(); 
}


void dessineFleur() {
  fill(#FFFFff);
  stroke(#FFFFFF);
  circle(625, 180, 60);
  circle(695, 250, 60);
  circle(555, 250, 60);
  circle(625, 250, 60);     //pétale
  circle(580, 200, 60);
  circle(670, 200, 60);
  circle(580, 300, 60);
  circle(670, 300, 60);
  circle(625, 320, 60);
  
  fill(#FFFC33);
  stroke(#FFFC33);
  circle(625, 250, 130);   //centre plante
  
  
  void soleil() {
  fill(#F7E71A);       //soleil
  stroke(#F7E71A);
  circle(1300,0,500);
}



void linesoleil() {
  strokeWeight(12);
  line(1100,25,880,100);
  line(1100,120,920,215);    //rayon du soleil
  line(1190,150,1025,325);
  line(1290,200,1200,400);
  strokeWeight(1);
}

