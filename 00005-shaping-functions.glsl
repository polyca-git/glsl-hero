// Author: polyca-git
// Title: Shaping Functions
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

// Plot a line on Y using a value between 0.0-1.0
float plot(vec2 st, float pct) {  
    //to understand the smoothtep, loot to the next files  
    return  smoothstep( pct-0.02, pct, st.y) - smoothstep( pct, pct+0.02, st.y);
}
/*
What is smoothstep?
Smoothstep has 3 paramters;
a-scalar or vector minimum referance value(s)
b-scalar or vector minimum referance value(s)
x-scalar or vector
--Interpolates soothly between two input values based on a third
--Smoothstep interpolates smoothly from 0 to 1 based on x compared to a and b
if x<a<b or x>a>b returns 0
if x<b<a or <>b>a returns 1
returns a value in the range [0,1] for the domain [a,b]
--The slope of the smoothstep(a,b,a) and smoothstep(a,b,b) is 0
--For vectors the returned vector contains the smooth interpolation of each element in the vector x
*/

void main() {
    //normalized coords, gl_FragCoord is a vec4
    //so here xy brings a vec2, u_resolution is also a vec2
    //when you divide them it should give us some normalized vec2 data of the screen
	vec2 st = gl_FragCoord.xy/u_resolution; 
    //y is power of a value of the x coordinates
    float y = pow(st.x,3.0);
    //color has the value of powered x coords
    vec3 color = vec3(y);

    // Plotting
    float pct = plot(st,y);
    color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);

	gl_FragColor = vec4(color,1.0);
}