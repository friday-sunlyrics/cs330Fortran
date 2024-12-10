# Learning FORTAN (Specifically FORTRAN 90/95)
You may be wondering, why and what? Why on Earth do you want to learn a dead language?
It's not dead, it's still be utilized in various areas... such as imaging! 
FORTRAN is the 'grandfather' of all programming languages, and revolutionized computing. 
In this tutorial you will learn a strongly and statistically, historical language. 
Please note that I am providing a tutorial on FORTRAN 90/95, there are several different flavors of FORTRAN. 


## Starting with HELLO WORLD
In any FORTRAN program, it begins with PROGRAM insertname and ends with END PROGRAM insertname. You do not need to capitalize program, if/else, or anything else but I prefer to because I feel like I'm coding back in the day. 

You may also, as it's highly preferred by many FORTRAN programmers, to insert IMPLICIT NONE to the start of your program. Back in the day, typing i, or any certain letter will have FORTRAN assume it's a certain data type. To not confuse or frustrate yourself, please insert the IMPLICIT NONE to the start of your program. 

Now there are technically two ways to output statements/strings in FORTRAN, WRITE(\*,\*) and PRINT *, "Looking cool, Joker!". I much prefer PRINT *, and this tutorial will be solely using PRINT. 

There are no ';' or '.' to end things in FORTRAN, but with if/else, functions, subroutines, derived types, and programs you need to have END. 

![Screenshot 2024-12-08 141016](https://github.com/user-attachments/assets/b8a6ba23-bb2a-4707-9d7b-4f86a75495c6)


*Again you DON'T need to capitalize PRINT and PROGRAM, lowercase or uppercase work fine.*

### Data Types

Fortran is strongly typed, as in, it requires you to declare a variable's, function's, derived type's, and subroutine's data type. FORTRAN supports data types of REAL, COMPLEX, LOGICAL, CHARACTER, and INTEGER. For CHARACTER, you need to, in parenthesis, declare the number of letters in your string. Note that LOGICAL is basically a boolean in FORTRAN.

### Declaring Variables
To declare a variable, first put in your data type, two semicolons without a space, and the name of your variable. You do NOT need to immediately assign a variable to a value. If you do, you can, after the name of the variable, type in = 3, for example. 


**INTEGER :: num = 4**
**CHARACTER(20) :: name**


## Funky Functions

  Before diving right into coding your first function in FORTRAN, know that functions and the program block do NOT mix! As in, have your functions outside of the program/endprogram block. Additionally, functions in FORTRAN, atleast in the 90/95 version, functions are more picky than in Python for example. 

  To start, write in the data type of the function you want to return.
