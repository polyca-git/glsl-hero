// Author: polyca-git
// Title: Unifroms
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
#ifdef GL_ES
precision mediump float;
#endif

/*threads are blind to the others, because of that we need to send some info from the
CPU to the threads, uniforms are qual to all of the threads and set as read only.
*/
uniform vec2 u_resolution;  // Canvas size (width,height)
uniform vec2 u_mouse;       // mouse position in screen pixels
uniform float u_time;       //// Time in seconds since load
//Uniforms are little burdges between CPU and GPU. The names can depend to various implementations.
//For an example, shadertoy uses these implementations:
uniform vec3 iResolution;   // viewport resolution (in pixels)
uniform vec4 iMouse;        // mouse pixel coords. xy: current, zw: click
uniform float iTime;        // shader playback time (in seconds)
