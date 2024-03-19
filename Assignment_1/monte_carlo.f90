!monte carlo.f90 that calls the subroutine test pi() with a concrete array of values.
!Concrete array of values :- fixed array 
program monte_carlo
    implicit none !All variables must be declared
    integer, dimension(6):: input=(/1d1,1d2,1d3,1d4,1d5,1d6/) !concrete array of values
    real(kind=8), dimension(6) :: output ! output array with each value is of real(kind=8) type  storing π estimate
    integer :: n=6 !declaring integer variable storing size of array

    !calling test_pi with concrete array of values
    call test_pi(n,input,output)
    ! To see the estimated value of π's for different num_points
    ! You can uncomment this if you want to

    print "(f17.15,5f18.15)",output(1:n)


end program monte_carlo
