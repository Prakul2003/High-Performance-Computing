subroutine test_pi(n,input,output)
    implicit none !All variables must be declared
    integer,intent(in) :: n ! size of array
    ! real(kind=8) has 15 digits of precision
    real(kind=8),parameter :: PI=3.141592653589793d0
    integer, dimension(n), intent(in) :: input ! input array of size n storing integers
    real(kind=8), dimension(n), intent(out) :: output ! output array of size n storing double precision
    real(kind=8), external :: monte_carlo_pi ! function to calculate the estimate of π for given num_points
    real(kind=8) :: error ! variable to store error value for each estimate
    integer :: i ! loop variable
    
    ! loop to calculate π estimate for each value of number of points 
    do i=1,n
        ! calculate and store value of π estimate in output array
        output(i)=monte_carlo_pi(input(i))
        ! calculate the error of π estimate
        error=abs(PI-output(i))/PI

        ! print a message if the error is larger than 20% of the actual value of π
        if(error>0.2) then
            ! print a message 
            print"(a,i0,a,f5.2)","For n = ",input(i),", The Error is greater than 20% with value ",error*100.0
        end if

    end do

end subroutine test_pi


! program check
!     implicit none
!     integer, dimension(6):: input=(/1d1,1d2,1d3,1d4,1d5,1d6/)
!     real(kind=8), dimension(6) :: output
!     integer :: n=6,i=1

!     call test_pi(n,input,output)
!     do i=1,6
!         print "(f17.15)",output(i)
!     end do

! end program check
