//your code here
int np = 50;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
double bx;
double by;
Particle [] particles;

public void setup()
{
  frameRate(30);
	size(800,800);
  particles = new Particle[np];
  for(int i = 0; i< particles.length; i++){
    particles[i]= new NormalParticle();
  }
}

public void draw()
{
  background(0);
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
		x=400;
		y=400;
		bx = x;
		by = y;
		deg =(int)(Math.random()*360);
		ang =deg*(Math.PI/180);
		spe= (int)((Math.random()*8)+1);
        c = color(r,g,b);
	}

	public void move(){
	    
		ang = ang+2*(Math.PI/180);
		spe = spe+1;
		x = x+spe*Math.sin(ang);
		y = y+spe*Math.cos(ang);

	}
	public void show(){
	    fill(c);
	    noStroke();
	    ellipse((float)x,(float)y,10,10);
	}

	public void origin(){
		if(x>300||y>300||x<0||y<0){
		   x=400;
		   y=400;
		   
		   spe = spe;
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
	public void move(){

	}
	public void show(){
		
	}
	public void origin(){

	}
}

class JumboParticle implements Particle//uses inheritance
{
	//your code here
	public void move(){

	}
	public void show(){
		
	}
	public void origin(){

	}
}