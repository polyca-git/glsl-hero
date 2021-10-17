// Author: polyca-git
// Title: Colors
// Desciption: Information here is based on the online book called https://thebookofshaders.com/

//preprocessor macros
//checks if defined GL_ES
#ifdef GL_ES
//here we are setting all floats to medium Precision
precision mediump float;
#endif

uniform float u_time;
//writing the functions to the top is important, the code will not be compiled if you define the functions afterwards
vec4 backgroundColor(){
	return vec4(1.0,0.0,1.0,1.0);
}


//shaders has a pre defined main function like C
void main() {
	//the book recommends us to always use . in float variables, even if they are equal to integers
	//red, green, blue, alpha varables normalized(0-1)
	gl_FragColor = backgroundColor();
	//g_FragColor is one of the reserved global variables.


	//another way of constructiong a vec4
	vec4 color = vec4(vec3(1.0,0.0,0.0),1.0);
}

