//your code here
int np = 50;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
Particle [] particles;

public void setup()
{
  frameRate(30);
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
	double x,y,spe,ang,deg;

	NormalParticle(){
		x=300;
		y=300;
		deg =(int)(Math.random()*360);
		ang =deg*(Math.PI/180);
		spe= (int)((Math.random()*8)+1);
        c = color(r,g,b);
	}

	public void move(){
	ang = ang+2*(Math.PI/180);
	//ang = ang+0.1;
	spe = spe+1;
    x = x+spe*Math.cos(ang);
    y = y+spe*Math.sin(ang);
    
	}
	public void show(){
    fill(c);
    noStroke();
    ellipse((float)x,(float)y,10,10);
	}

	public void return(){
		if(x>600||y>600||x<0||y<0){
			spe = spe+1;
			ang = ang+2*(Math.PI/180);
		}
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