! 
! Welcome to GDB Online.
! GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
! C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
! Code, Compile, Run and Debug online from anywhere in world.
! 
! 

!=== MULTIPLY FUNCTION

INTEGER FUNCTION multiply(x,y)
IMPICIT NONE
 
INTEGER, INTENT(IN) :: x  
INTEGER, INTENT(IN) :: y
INTEGER, INTENT(OUT) :: multResult

multResult = x*y

RETURN multResult
END FUNCTION multiply

! ==== END OF multiply FUNCTION ====

!=== CHARACTER FUNCTION

CHARACTER FUNCTION splitStrings(word) RESULT (stringsplit1, stringsplit2)
IMPICIT NONE
 CHARACTER (len=10), INTENT(IN) :: word
 CHARACTER(len=10), INTENT(OUT) :: stringsplit1, stringsplit2
 
 INTEGER :: i 
 
 CHARACTER(len=10) :: trimmedStr = TRIM(word) ! Removes blank characters
 
 i = SCAN(trimmedStr)
 stringsplit2 = trimmedStr(1:i-1)
 stringsplit1 = trimmedStr(i+1)
 RETURN (stringsplit1, stringsplit2)
 
 END FUNCTION splitStrings
 
 ! ==== END OF splitStrings FUNCTION ====
 
 !=== RECURSIVE FUNCTION
  
  RECURSIVE FUNCTION recursionTime(num) RESULT (resultNum)
  IMPICIT NONE
  INTEGER, INTENT(IN) :: num
  INTEGER, INTENT(OUT) :: resultNum
  if (num > 50) then
    PRIMT *, "Bigger than 50!"
  else
    num = num + 10
    recursionTime(num)
  ENDIF  
  
  END FUNCTION recursionTime
  
 ! ==== END OF recursionTime FUNCTION ====
 
 !=== PASSBYWHAT FUNCTION
 
 INTEGER FUNCTION passbywhat(val,ptr) 
 IMPICIT NONE
 INTEGER, INTENT(IN) :: val
 INTEGER, POINTER, INTENT(IN) :: ptr
 
 
 INTEGER, POINTER, val (:) :: ptrVal
 PRINT *, ptrVal
 PRINT *, val
 END FUNCTION passbywhat
 
 
 
    

PROGRAM Functions
IMPICIT NONE

INTEGER :: multiply
WRITE (*,*) multiply(5,3)

INTEGER :: recursionTime
WRITE(*,*) recursionTime(7)

INTEGER :: splitStrings
WRITE(*,*) splitStrings("Crying")

INTEGER, POINTER :: ptr
INTEGER :: test

INTEGER :: passbywhat

WRITE(*,*) passbywhat(test,ptr)

END PROGRAM Functions

