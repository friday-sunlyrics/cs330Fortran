! -- Testing things out for PLP-2 --

! Operators, seeing if they can mix

PROGRAM Testing
    ! Setting up variables ----------------------------------------
        ! REAL numbers are like doubles, floats...
        ! INTEGER, the basic 1,2,3... no decimals
        ! COMPLEX numbers are like unreal numbers
        ! For strings, you want to use CHARACTER, and establish the length inside
        ! For arrays, use INTEGER (unless you want to have real numbers instead)
            ! And also use dimension to figure out the length and dimensions you need
        ! No booleans technically, so use LOGICAL instead
   
    real :: t = 2.558
    integer :: z = 3
    real :: y 
    complex :: minamimoto = 3.14159265359 ! TWEWY fan here, the character Minamimoto said the entire Pi
    character(len = 10) :: cheese_name ! String (of cheese)
    integer, dimension(5) :: arraytest ! Array
    ! Technically there are no booleans in Fortran... but they are logicals!
    logical :: b,c
    ! END OF ESTABLISHING VARIABLES ----------------------------------------
    
    ! Logic Chess (Kidding, it's an Ace Attorney reference)
    b = .false.
    c = .true.
    
    if (b .or. c) then
        print *, "Condition is true!"
    else
        print *, "Condition is false!"
    end if
    ! ---------------------------------------
    
    ! Array time  
    arraytest = [1,2,3,4,5]
    print *, "Here is the array you ordered: "
    print *, arraytest 
    !----------------------------------------
    
    ! String time
    cheese_name = "Pepperjack" ! Best cheese there is
    print *, cheese_name
    !----------------------------------------
    
    ! With one operator
    y = t*z
    print *,y 
    !----------------------------------------
    
    ! With two operators
    y = t*z-t
    print *, y
    !----------------------------------------
    
   
    ! It seems that Fortran does not entirely mind if you multiply an integer and a real number
    
    y = t/z
    print *, y ! Testing to see if Fortran will approve of division of an integer and real type
    
    y = (t-z)*y
    print *, y ! Will Fortran like this complex math?
        ! Upon running this, it does!
        
    ! Testing out the complex with the integer
    minamimoto = minamimoto * t 
    print *, minamimoto
    
    minamimoto = minamimoto/t + t
    
    ! Testing to see if you can do math with a complex and an integer
    minamimoto = (minamimoto * z)
    print *, minamimoto
    
    minamimoto = (minamimoto*z) + z
    print *, minamimoto
    
    ! Testing to see if all three work together in harmony
    minamimoto = minamimoto + (z*t/minamimoto)
    print *, minamimoto
        ! Upon running this, it seems like Fortran supports mixed type operators!
    !----------------------------------------

    ! DICTIONARIES AND HASHES
         ! Fortran is an oldie (but a goldie)
         ! But that also means hashes and dictionaries aren't built in like Python
         ! Plus, Fortran was made specifically for scientific computations
            ! You want to use an INTEGER type with a parameter, according to someone's open code
            ! Go check out this off that open code/free software, by Izaak Beekman from 2010...
                ! From the website: https://fortranwiki.org/fortran/show/hash+table+example
END PROGRAM
    