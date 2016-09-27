//your code here

void setup()
{
	size(600,600);

}

void draw()
{
	//your code here
}

class NormalParticle implements Particle
{
	int c;
	double x,y,spe,ang;

	NormalParticle(){
		x=300;
		y=300;
		ang=(double)(Math.random()*2*Math.PI);
		spe=(double)(Math.random()*8);
	}

	public void move(){
		
	}
	public void show(){

	}



}

interface Particle
{
	public move();
	public show();
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

