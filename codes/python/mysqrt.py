# Newton Method for computing square root
x=0.0001
s=1.0
tol=2.2e-16
for k in range(100):
 s0=s	
 print(f"At iteration {k} the value of s = {s:17.15f}")
 s=0.5*(s+x/s)
 delta_s=abs(s-s0)
 if(delta_s/x < tol):
  break


print(f"finally the value of sqrt is {s}")
