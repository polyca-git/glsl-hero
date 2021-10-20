// Author: polyca-git
// Title: Useful Functions
// Desciption: Information here is based on the online book called https://thebookofshaders.com/
/*
Look at thiese examples
-modulo of a number is what's left of the number after dividing to the second number as much as possible
00009-1.png -> y = mod(x,0.5); 
-fraction of a number is non integer part of a number fract(3.0)=0 fract(-0.98)=-0.98
00009-2.png -> y = fract(x); 
-returns higer or equal nearest integer
00009-3.png -> y = ceil(x);  
-returns less or equal nearest integer
00009-4.png -> y = floor(x); 
-sign extraction, returns -1 if the number is negative, returns 1 if the number i positive
00009-5.png -> y = sign(x); 
-returns the number as a positive number
00009-6.png -> y = abs(x); 
-clamp is restricting a value, returns min value if x is smaller than min, returns max value if x is higher than max 
00009-7.png -> y = clamp(x,0.0,1.0); 
-returns the smaller parameter
00009-8.png -> y = min(0.0,x); 
-returns the highr parameter
00009-9.png -> y = max(0.0,x);  


-returns 0 for the lower values than treshold, returns 1 for the higher values than treshold
step(treshold, value)
-returns 0 if vals are lower than min, returns 1 if the vals are higher than  max
the trick here is,the values between stays.
smoothstep(min, max, value)

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