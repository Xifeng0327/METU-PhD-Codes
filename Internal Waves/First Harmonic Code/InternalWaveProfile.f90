
subroutine getGroupVelocity(Amp,x,x_ref,sigma, alpha, A_0, kx, kz)
		
	!the original coordinates and the reference coordinate
	real*8, intent(in),dimension(2):: x,x_ref	
	! the amplitude
	real*8, intent(inout):: Amp	
 	! the  half width, the viscous dissipation cofficient and the initial amplitude and wave numbers
	real*8, intent(in):: sigma, alpha, A_0, kx, kz
	!the rotated coordinates
	real*8, allocatable:: x_rot(:)	
	!the rotation angle
	real*8 theta	
	! it is two dimensional rotation
	allocate(x_rot(2))

	! the rotation angle
	theta=datan(-1.d0*kz/kx)
	! let's get the rotated coordinates
	call Rotate2D(x_rot,x,x_ref,theta)
	
	!the amplitude calculation 
	Amp=A_0*dexp(-1.*alpha*x_rot(1))*dexp(-0.5*(x_rot(2)/sigma)**2.)
	
end subroutine getGroupVelocity

subroutine getWaveNumberInZ(Amp,x,x_ref,sigma, alpha, A_0, kx, kz)
		
	!the original coordinates and the reference coordinate
	real*8, intent(in),dimension(2):: x,x_ref	
	! the amplitude
	real*8, intent(inout):: Amp	
 	! the  half width, the viscous dissipation cofficient and the initial amplitude and wave numbers
	real*8, intent(in):: sigma, alpha, A_0, kx, kz
	!the rotated coordinates
	real*8, allocatable:: x_rot(:)	
	!the rotation angle
	real*8 theta	
	! it is two dimensional rotation
	allocate(x_rot(2))

	! the rotation angle
	theta=datan(-1.d0*kz/kx)
	! let's get the rotated coordinates
	call Rotate2D(x_rot,x,x_ref,theta)
	
	!the amplitude calculation 
	Amp=A_0*dexp(-1.*alpha*x_rot(1))*dexp(-0.5*(x_rot(2)/sigma)**2.)
	
end subroutine getWaveNumberInZ