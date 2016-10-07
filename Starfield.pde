//your code here
int np = 2000;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
double bx;
double by;
Particle [] particles;

public void setup()
{
  int i;
  frameRate(30);
	size(800,800);
  particles = new Particle[np];
  for(i = 0; i< particles.length; i++){
    particles[i]= new NormalParticle();
  }
  for(i=200;i<501;i++){
    particles[i]= new OddballParticle();
  }
  for(i=501;i<800;i++){
    particles[i]= new JumboParticle();
  }
}

public void draw()
{
  background(0,0,0,5);
  for(int i = 0; i< particles.length; i++){
  	 particles[i].move();
  	 particles[i].show();
     particles[i].origin();
  }
  
}

class NormalParticle implements Particle
{
	int c;
	double x,y,spe,ang,deg;

	NormalParticle(){
		x = 400;
		y = 400;
		deg = (int)(Math.random()*360);
		ang = deg*(Math.PI/180);
		spe = (int)((Math.random()*8)+1);
    c = color(r,g,b);
	}

	public void move(){
		x = x+spe*Math.cos(ang);
		y = y+spe*Math.sin(ang);
    spe = spe+1;

	}
	public void show(){
	    fill(c,90);
	    noStroke();
	    ellipse((float)x,(float)y,5,5);
	}

	public void origin(){
		if(x>800||y>800||x<0||y<0){
		   x=400;
		   y=400;
		   spe = 0;
		}
	}
}

interface Particle
{
	public void move();
	public void show();
	public void origin();
}

class OddballParticle implements Particle //uses an interface
{
	//your code here
  int co = 255;
  double xPos,yPos,sped,angl,degr;
  
  OddballParticle(){
    xPos=400;
    yPos=400;
    degr =(int)(Math.random()*360);
    angl =degr*(Math.PI/180);
    sped= (int)((Math.random()*8)+1);
  }      
	public void move(){
    angl = angl+20*(Math.PI/180);
    xPos = xPos+sped*Math.cos(angl);
    yPos = yPos+sped*Math.sin(angl);
    sped = sped+1;
	}
	public void show(){
		 fill(co);
     noStroke();
     ellipse((float)xPos,(float)yPos,5,5);
	}
	public void origin(){
    if(xPos>800||yPos>800||xPos<0||yPos<0){
       xPos=400;
       yPos=400;
       sped = 0;
    }
	}
}

class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void move(){
    ang = ang+10*(Math.PI/180);
    spe = spe+1;
    x = x+spe*Math.sin(ang);
    y = y+spe*Math.cos(ang);
	}
	public void show(){
		 fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),80);
     noStroke();
     ellipse((float)x,(float)y,15,15);
	}
	
}