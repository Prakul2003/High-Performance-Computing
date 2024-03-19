#importing necessary libraries
import matplotlib.pyplot as pt
import numpy as np
import subprocess #to run the main.exe file
import os #to get the path of executable file

# Generate input points logarithmically spaced from 10 to 10^6
input_points = np.logspace(1, np.log10(10**6), 50, dtype=int)
estimated_pi = [] #to store the estimated pi values

# Get the path to the executable
path = os.path.join(os.getcwd(), "main_shell.exe")

# Loop through each input point
for i in input_points:

    # Run the executable with the current input point as argument
    output = subprocess.run([path, str(i)], capture_output=True, text=True, check=True)
    
    # Extract the estimated value of pi from the output and convert it to float
    # and append it to estimated_pi list
    estimated_pi.append(float(output.stdout.split()[-1].strip()))

# Plot the estimated value of pi against the number of Monte Carlo points
pt.plot(input_points, estimated_pi, color="red", label='π estimate', marker="o", markeredgecolor='black')
# giving xlabel
pt.xlabel("Number of Monte Carlo Points ----->", fontsize=12) 
# giving ylabel
pt.ylabel("Estimated π ----->", fontsize=12)
pt.xscale('log')  # Set logarithmic scale for x-axis
# plotting horizontal line y = π
pt.axhline(np.pi, color="limegreen", label='π value', linestyle="--") 
# giving title to the plot
pt.title("Convergence of π estimate with Monte Carlo points", fontsize=14)
pt.legend()  # Show legend

# Save the plot as a PDF file
pt.savefig('plots.pdf')
