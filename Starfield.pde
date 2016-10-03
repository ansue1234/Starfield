//your code here
int np = 200;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
Particle [] particles;

public void setup()
{
  frameRate(5);
	size(600,600);
  particles = new Particle[np];
  for(int i = 0; i< particles.length; i++){
    particles[i]=new NormalParticle();
  }
}

public void draw()
{
  background(0);
  for(int i = 0; i< particles.length; i++){
	  particles[i].show();
    particles[i].move();
  }
}

class NormalParticle implements Particle
{
	int c;
	double x,y,spe,ang;

	NormalParticle(){
		x=300;
		y=300;
		ang=(double)(Math.random()*2*Math.PI);
		spe=(double)((Math.random()*8)+1);
    c = color(r,g,b);
	}

	public void move(){
		x = x+spe*Math.cos(ang);
    y = y+spe*Math.sin(ang);
    spe = spe+10;
    ang = ang+12*(Math.PI/180);
	}
	public void show(){
    fill(c);
    noStroke();
    ellipse((float)x,(float)y,10,10);
	}
}

interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle //uses an interface
{
	//your code here
	public void move(){

	}
	public void show(){
		
	}
}

class JumboParticle implements Particle//uses inheritance
{
	//your code here
	public void move(){

	}
	public void show(){
		
	}
}