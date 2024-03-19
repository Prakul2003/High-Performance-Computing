# Newton Method
x=2.0
s=1.0
for k in range(5):	
 print(f"At iteration {k} the value of s = {s:17.15f}")
 s=0.5*(s+x/s)

print(f"finally the value of sqrt is {s}")
