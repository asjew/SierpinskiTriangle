int limit = 10;
int length = 10;
PImage link, fairy, tingle;

public void setup()
{
	size(500, 500);
	background(#E0FCFF);
	link = loadImage("link.png");
	fairy = loadImage("fairy.png");
	tingle = loadImage("tingle.png");
}
public void draw()
{
	sierpinski(0, 500, length);
	image(link, 370, 372);
	image(fairy, 460, 360, width/12, height/12);
	image(tingle, 30, 30, width/5, height/4);

}
public void mouseDragged()//optional
{
	if(length < 500)
	{
		limit += 1;
		length += 20;
		background(#E0FCFF);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= limit)
	{
		fill(#4CE3C8);
		triangle(x, y, x + len, y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}

}