import numpy as np
from mysqrt import sqrt2

#pytest looks for a function containing test in it
def test_1():
	small=1.0e-13
	xvalues=[0,2,100,10000,0.0001,1e8]
	for x in xvalues:
		s=sqrt2(x)
		s_numpy=np.sqrt(x)
		print(f"for x = {x} --->  s = {s} and s_numpy = {s_numpy}")
		assert abs(s-s_numpy) < small , f"square root disagrees with numpy square root for x = {x}"

def test_2():
        small=1.0e-11
        xvalues=[1e1,1e2,1e3,1e4,1e5,1e6,1e7,1e8]
        for x in xvalues:
                s=sqrt2(x)
                s_numpy=np.sqrt(x)
                print(f"for x = {x} --->  s = {s} and s_numpy = {s_numpy}")
                assert abs(s-s_numpy) < small , f"square root disagrees with numpy square root for x = {x}"

