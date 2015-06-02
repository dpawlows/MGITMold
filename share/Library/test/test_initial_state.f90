program test_initial_state

  use ModInitialState, test => test_initial_state

  implicit none

  integer:: iError
  !---------------------------------------------------------------------------
  call MPI_init(iError)
  call test
  call MPI_finalize(iError)

end program test_initial_state

subroutine CON_stop(StringError)

  implicit none
  character (len=*), intent(in) :: StringError
  !----------------------------------------------------------------------------

  write(*,'(a)')StringError

  stop

end subroutine CON_stop

