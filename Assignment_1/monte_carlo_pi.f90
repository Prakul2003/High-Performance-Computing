! ----------------------- monte_carlo_pi ----------------------------

real(kind=8) function monte_carlo_pi(num_points) result(pi_estimate)
    implicit none ! All variables must be declared
    integer,intent(in) :: num_points ! integer storing number of points to generate with intent
    integer i,count ! i for loop and count to store number of points lie within the circle
    real(kind=8) :: x_random, y_random ! to store random genrated values

    !initialise count = 0
    count = 0 

    !Running a for loop from i=1 to num_points both inclusive
    do i=1,num_points

        !generate random number between [0,1) for x coordinate of point
        call random_number(x_random)
        ! make the range of random number from [0,1) to [-0.5,0.5)
        ! Required because square and circle is centered at origin and have unit length and 0.5 radius respectively
        x_random = (x_random-0.5)*1.0

        !generate random number between [0,1) for y coordinate of point
        call random_number(y_random)
        ! make the range of random number from [0,1) to [-0.5,0.5)
        ! Required because square and circle is centered at origin and have unit length and 0.5 radius respectively
        y_random = (y_random-0.5)*1.0

        !checking whether (x_random,y_random) falls within the circle or not
        if(sqrt(x_random**2+y_random**2)<=0.5) then
            count=count+1
        end if
    
    end do

    ! Estimate value of π as 4 * ( ratio of the number of points in the circle to the total number of points)
    pi_estimate=4.0*real(count)/real(num_points)

end function monte_carlo_pi

! Writing a program to check our monte_carlo_pi function
!You can uncomment below part and run this file for execution separately

! program check 
!     implicit none
!     real(kind=8), external :: monte_carlo_pi
!     real(kind=8) :: ans
!     integer :: num_points=100000000

!     ans=monte_carlo_pi(num_points)
!     print *,ans
! end program check