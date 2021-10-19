// Author: polyca-git
// Title: gl_FragCoord
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
	/*vec4 gl_FragCord is a default input which holds the screen coordinates of the pixel 
	or screen fragment that the active thread is working on. 
	With gl_FragCoord we know where a thread is working inside the billboard.
	We don't call it uniform because it will be different thread to thread.
	gl_FragCoord is called "varying".
	*/
	//Here we are normalizing the coordinate of the fragment by dividing it to the total resolution of the billboard.
	//When you do that, the values are between 0 and 1.
	vec2 uv = gl_FragCoord.xy/u_resolution;
	vec2 mouse_position = u_mouse/u_resolution;
	float time_mod = mod(float(u_time),1.0);
	gl_FragColor = vec4(uv.x,uv.y,0.0,time_mod);
}
/*
Note: GLSL is a different programming type, which is stream processing.
gl_FragCoord takes on a different value for every pixel in the image.
.xy provides us a vec2 of just the Xand Y coordinates of each pixel.
resolution, on the other hand is an uniform variable, which means it has the same value over all pixels.I t gives us the total numbers of pixels along X and Y.
gl_FragCoord.xy / resolution.xy produces a new vec2 by dividing gl_FragCoord.x by resolution.x and gl_FragCoord.y by resolution.y.
The uv vector contains X and Y coordinates that each have been normalized range from 0 to 1.
This gives us a normal (x,y) coordinate plane (or Cartesian plane) where the lower-left point is (0,0), moving to the right increases the X coordinate, and moving up increases the Y coordinate - up to the top-right corner which is (1,1).
gl_FragColor is where we assign the pixel's respective color into a vec4 by giving, in order, its red, green, blue, and alpha channel values. 
Each value is from 0 to 1, and values outside that range are clipped inside of it.
The result, then, is that we've assigned the red channel of each pixel to its X coordinate, and the green channel to the Y coordinate. The blue channel was just left at 0.
Thus, at the very lower-left, we'd expect to see black (red and green are both 0 because X and Y are zero), and moving up to the top-right, we'd expect to see yellow (red and green are both at their maximum of 1).
*/