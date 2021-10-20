// Author: polyca-git
// Title: Smoothstep
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float plot(vec2 st, float pct){
  return  smoothstep( pct-0.01, pct, st.y) -
          smoothstep( pct, pct+0.01, st.y);
}

void main() {
    vec2 st = gl_FragCoord.xy/u_resolution;

    // Smooth interpolation between 0.1 and 0.9
    float y = smoothstep(0.1,0.9,st.x);

    vec3 color = vec3(y);

    float pct = plot(st,y);
    color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);

    gl_FragColor = vec4(color,1.0);
}

/*
smoothstep is also an unique function like step, you are giving a range of two numbers and a value.
the value is interpolating(look at step function at the previous file) between the defined range.
first and second parameters are the low and up limit (or treshold) while the third one is the value to interpolate.
To understand the 00005, replace the 23rd line here with "float y = smoothstep(0.2,0.5,st.x) - smoothstep(0.5,0.8,st.x);"
*/