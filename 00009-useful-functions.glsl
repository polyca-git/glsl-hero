// Author: polyca-git
// Title: Useful Functions
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
/*
Look at thiese examples
00009-1.png -> y = mod(x,0.5); // return x modulo
00009-2.png -> y = fract(x); // return only the fraction part of a number
00009-3.png -> y = ceil(x);  // nearest integer that is greater than or equal to x
00009-4.png -> y = floor(x); // nearest integer less than or equal to x
00009-5.png -> y = sign(x);  // extract the sign of x
00009-6.png -> y = abs(x);   // return the absolute value of x
00009-7.png -> y = clamp(x,0.0,1.0); // constrain x to lie between 0.0 and 1.0
00009-8.png -> y = min(0.0,x);   // return the lesser of x and 0.0
00009-9.png -> y = max(0.0,x);   // return the greater of x and 0.0 

Useful Links:
https://thebookofshaders.com/edit.php#05/impulse.frag
https://thebookofshaders.com/edit.php#05/cubicpulse.frag
https://thebookofshaders.com/edit.php#05/expo.frag
https://thebookofshaders.com/edit.php#05/expstep.frag
https://thebookofshaders.com/edit.php#05/parabola.frag
https://thebookofshaders.com/edit.php#05/pcurve.frag
https://www.shadertoy.com/view/XsXXDn

Also, please look at 00009-10.png to understand more deeply. 

More Useful Links:
https://graphtoy.com/
http://tobyschachman.com/Shadershop/
*/