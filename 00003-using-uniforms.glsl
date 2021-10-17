// Author: polyca-git
// Title: Using Uniforms
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
#ifdef GL_ES
precision mediump float;
#endif
//Get the uniform total time since load from the CPU
uniform float u_time;

void main() {
    //Use the absolute value of the sin,cos,tan,sqrt of total time since load as the colors and alpha
	gl_FragColor = vec4(abs(sin(u_time)),abs(cos(u_time)),abs(tan(u_time)),abs(sqrt(u_time)));
}

/* Great Suprises from the GLSL. It has trigonometric and exponential functions.
Some of them are:
sin()
cos()
tan()
asin()
acos()
atan()
pow()
exp()
log()
sqrt()
abs()
sign()
floor()
ceil()
fract()
mod()
min()
max() 
*/