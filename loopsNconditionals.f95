
Program LoopsNConditionals

! ----- Establish variables, always goo dpractice to do them above, or first!
integer :: x = 49
integer :: y = 94
real :: z = 0.0
integer :: test = 49

! ----- Complicated if/elif/else statement
PRINT *, x
IF(x>10) THEN
   PRINT *, "Your value is more than ten."
   
ELSE IF(x<10) THEN 
   PRINT *, "Your value is less than ten."
ELSE
   PRINT *, "If you value isn't in these ranges, then what is your number?"
   
ENDIF
   
! ----- Simple ifelse statement
IF (x == 49) THEN
    PRINT *, "Your value is ", x
ELSE  
    PRINT *, "Your value is not 49."
ENDIF

! ----- Fortran can do and/or inside if/else statements!
IF (x>0 .AND. y>0) THEN   !--- Just remember to use  .AND. .OR.
   PRINT *, "True"
ENDIF

! ----- Short circuiting
IF(z.ne.0 ) THEN
   IF (top/z.gt.10.0 ) THEN
        WRITE(*,*) "This works!"
    ENDIF
ENDIF   ! ----- CODE INSPIRED BY https://fortranwiki.org/fortran/show/short-circuiting

! ----- Select case
SELECT CASE (test)

    CASE(49)
        PRINT *, "Value is 49."
    
    CASE(94)
        PRINT *, "Value is 94."
    
    CASE DEFAULT
        PRINT *, "Default answer."
END SELECT

PRINT *, "Results... ", test


End Program LoopsNConditionals