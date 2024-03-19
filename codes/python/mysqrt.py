# Newton Method for computing square root
"""
Module to calculate sqrt using the Newton's Method

"""
def sqrt2(x,debug=False):
 """
 sqrt function implementation
 """
 s=1.0
 tol=2.2e-16
 for k in range(100):
  s0=s
  if(debug):	
   print(f"At iteration {k} the value of s = {s:20.15f}")
  s=0.5*(s+x/s)
  delta_s=abs(s-s0)
  if(delta_s/x < tol):
   break
 if(debug):
  print(f"finally the value of sqrt is {s:20.15f}")
 return s

