program main_shell
    implicit none ! All variables must be declared
    integer :: num_points ! Variable to store the number of points
    real(kind=8), external :: monte_carlo_pi ! External function to estimate pi
    real(kind=8) :: estimated_pi ! Variable to store the estimated value of pi
    character(len=10) :: arg ! Character variable to store command line argument
    
    ! Check if the number of command line arguments is correct
    if (command_argument_count() /= 1) then
        print *, "should be of form 'main_shell.exe <number_of_points>'"
        stop
    end if

    ! Parse the command line argument for the number of points
    call get_command_argument(1, arg) ! Get the first command line argument
    read(arg, *) num_points ! Convert the argument to an integer and store it in num_points

    ! Calculate the estimated value of π using Monte Carlo method written in function named monte_carlo_pi
    estimated_pi = monte_carlo_pi(num_points)

    ! Print the estimated value of π
    print "(a,f17.15)", "Estimated value of π is : ", estimated_pi

end program main_shell

