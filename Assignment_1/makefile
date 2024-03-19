# Compiler and flags
FC = gfortran
FFLAGS = -O3
LFLAGS =

# Object files
OBJECTS = monte_carlo_pi.o test_pi.o monte_carlo.o

# Phony targets
.PHONY: clean clobber help

# Target to generate output.txt file
output.txt: monte.exe
	./monte.exe > output.txt

# Target to compile monte.exe
monte.exe: $(OBJECTS)
	$(FC) $(LFLAGS) $(OBJECTS) -o monte.exe

# Target to compile main_shell.exe
main_shell.exe: monte_carlo_pi.o main_shell.o
	gfortran monte_carlo_pi.o main_shell.o -o main_shell.exe

# Rule to compile Fortran source files to object files
%.o : %.f90
	$(FC) $(FFLAGS) -c $<

# Target to generate plots
plots: main_shell.exe
	python3 plot_python.py

# Target to clean up object and executable files
clean:
	rm -f $(OBJECTS) monte.exe main_shell.exe main_shell.o

# Target to remove all generated files
clobber: clean
	rm -f output.txt plots.pdf

# Target to display help message
help:
	@echo "Valid Targets: "
	@echo "output.txt"
	@echo "monte.exe"
	@echo "main_shell.exe"
	@echo $(OBJECTS)
	@echo "main_shell.o"
	@echo "plots"
	@echo "clean    : Remove all .o and .exe files"
	@echo "clobber  : Remove all generated files"
	@echo "help     : Display help message"
