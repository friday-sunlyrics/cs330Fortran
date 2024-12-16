# Learning FORTRAN (Specifically FORTRAN 90/95)
![9adspn](https://github.com/user-attachments/assets/7486ac57-3da8-42e3-9b83-03a4e1409533)

You may be wondering, why and what? Why on Earth do you want to learn a dead language?
It's not dead, it's still be utilized in various areas... such as imaging! 
FORTRAN is the 'grandfather' of all programming languages, and revolutionized computing. 

In this tutorial you will learn a strongly and statistically, historical language. 
Please note that I am providing a tutorial on FORTRAN 90/95, there are several different flavors of FORTRAN. 


## Starting with HELLO WORLD

Here is a link to the free, online compiler for FORTRAN 90/95:  https://www.onlinegdb.com/online_fortran_compiler

In any FORTRAN program, it begins with PROGRAM insertname and ends with END PROGRAM insertname. You do not need to capitalize program, if/else, or anything else but I prefer to because I feel like I'm coding back in the day. 

You may also, as it's highly preferred by many FORTRAN programmers, to insert IMPLICIT NONE to the start of your program. Back in the day, typing i, or any certain letter will have FORTRAN assume it's a certain data type. To not confuse or frustrate yourself, please insert the IMPLICIT NONE to the start of your program. 

Now there are technically two ways to output statements/strings in FORTRAN, WRITE(\*,\*) and PRINT *, "Looking cool, Joker!". I much prefer PRINT *, and this tutorial will be solely using PRINT. 

There are no ';' or '.' to end things in FORTRAN, but with if/else, functions, subroutines, derived types, and programs you need to have END. 

![Screenshot 2024-12-08 141016](https://github.com/user-attachments/assets/b8a6ba23-bb2a-4707-9d7b-4f86a75495c6)


*Again you DON'T need to capitalize PRINT and PROGRAM, lowercase or uppercase work fine.*

### Data Types

Fortran is strongly typed, as in, it requires you to declare a variable's, function's, derived type's, and subroutine's data type. FORTRAN supports data types of REAL, COMPLEX, LOGICAL, CHARACTER, and INTEGER. For CHARACTER, you need to, in parenthesis, declare the number of letters in your string. Note that LOGICAL is basically a boolean in FORTRAN.you

*NOTE: REAL = double, COMPLEX = float, LOGICAL = boolean, CHARACER... think like C. INTEGER, you already know who it is!*

### Acceptable things and other things to note
  FORTRAN has **no reserved words, only keywords** and the amount depends on the version you are using. 

  To add, FORTRAN does not really care about cases. Use a variable all uppercase, all lowercase, camelcase, FORTRAN just shrugs it off. A variable is a variable!

  ![image](https://github.com/user-attachments/assets/0192a0df-2ee8-488e-b9b6-ef77e6481ab3)

FORTRAN theoritcally has mutable variables since it's a compiled language, but that was never offically confirmed. Additionally, variable data types seemingly are immutable but once again, never confirmed. 'Tis a myster, it is.

Operators are: 
 - +  \+ addition
   - \- subtraction
   - \* multiplication
   -  / division
   - ** exponentials
   - /= inequality and == for equality
   -  <, >,<=,>= for all your greater, lessers and things like that
     *NOTE: From experience, real and integer data types can be mixed. Real and complex too.*
  
   Once again, LOGICALS are booleans in FORTRAN, the values accepted in this language are:
     - .TRUE.
     - .FALSE.
     - .AND.
     - .OR.
   Keep in mind you need the two '.'

      Next, there are no naming conventions, at least offically, as it's more of a preference thing. Basing off FORTRAN's history, naming conventions weren't that incredibly important.

      Finally, side effects don't appear to be a massive issue due to FORTRAN being defined in blocks or units (PROGRAM... END PROGRAM, IF/ELSE, ENDIF). Though according to an article from SpiceWorks, data protection is the only large side effect concern since FORTRAN is a pass-by-reference language.
      https://www.spiceworks.com/tech/tech-general/articles/what-is-fortran/
      
      
### Declaring Variables
To declare a variable, first put in your data type, two semicolons without a space, and the name of your variable. You do NOT need to immediately assign a variable to a value. If you do, you can, after the name of the variable, type in = 3, for example. 


**INTEGER :: num = 4**
**CHARACTER(20) :: name**

## IF/ELSE

  If and else's, a core aspect of programming, and included in FORTRAN. It's similar to modern programming languages but still a bit different. In FORTRAN there are **if/then/else, if/then/elif/then/else** statements. In more detail, FORTRAN delimits code blocks only when it comes to conditional statements and signalizing the end of an if/else statement with **ENDIF**. 

  Here is an example: 

![Screenshot 2024-12-15 202142](https://github.com/user-attachments/assets/04c37747-b191-4c52-87f9-f0dd1aba4aca)

#### Short-Circuiting

  FORTRAN does allow short-circuiting, at least for FORTRAN 90/95 but it's incredibly complex. Please refer to the document on loops and conditionals for an example program... writing code purely in github is painful.

## Loops
(Loops, brother. Hand over the Loops)

The various types of loops:
  - Do loop
  - Nested Do loop

The Do loop starts with writing DO, then an index, such as i to start off with. Then we have another number, to which the loop has a limit. So, for example, if a DO loop has this number as ten, the program would loop ten times. Don't forget to write END DO at the end of your loop!

Example:
 
![Screenshot 2024-12-15 202945](https://github.com/user-attachments/assets/7f02b618-2e00-4fe8-9b6d-8318390fc198)

Inspiration: https://www.fortrantutorial.com/loops/



  
  



## Funky Functions

  Before diving right into coding your first function in FORTRAN, know that functions and the program block do NOT mix! As in, have your functions outside of the program/endprogram block. Additionally, functions in FORTRAN, atleast in the 90/95 version, functions are more picky than in Python for example. 

  To start, write in the data type of the function you want to return.
  Then, type in the name of your function and after, add RESULT(*insertVariableHere*) if your function is returning a value with the intent of a new variable.

  If you are inputting variables from outside the variable, you **need** to type in: DATATYPE, INTENT (IN) :: insertVariable_name. Then you are free to do any calculations or whatever Fortran can allow you to do inside the function. 

  ![image](https://github.com/user-attachments/assets/2490916f-2edb-45be-8fa3-66052b9d8387)


  Okay, so you've written the introductory steps to make your function and the 'meat' inside, how do we close this up? By putting END FUNCTION at the end, which tells Fortran that this function you just written shalt not pass further. However! Wait! What about returning a value back? Easy, just type in RETURN, that's it. 

  NOTE: Functions in FORTRAN are commonly used to return one value.
  


![Screenshot 2024-12-09 214148](https://github.com/user-attachments/assets/1148cf35-26db-4b3a-92e0-9c8fb89c4c2a)

  #### Calling functions
Unlike most modern languages, FORTRAN requires you to initialize the function by assigning it likewise to a variable inside the program block. Assign these like normal, non-function variables.

![Screenshot 2024-12-15 193643](https://github.com/user-attachments/assets/54a5e441-0dc1-471d-9f00-715d71e2e91a)

  Once that is completed, now go to where you want to call this function. Simply type up the function's name, then followed by '()'. Insert a variable or character or number into those parenthesis if your function requires them. 

Function results CAN be saved inside another variable, illustrated as so below: 
![Screenshot 2024-12-15 193943](https://github.com/user-attachments/assets/e8310dc3-7b21-45f6-be90-dcc96b57d5aa)


  ## Subroutines

  A subroutine in FORTRAN is quite similar to a function, aside that it's formatting is slightly different and that it can return multiple values back!

  To begin, simply type SUBROUTINE (you do NOT have to specify it's returning datatype) and it's name, and then what parameters to take inside parenthesis. If you need to return variables, simply type in RETURN. End the subroutine with END SUBROUTINE. 

  
![Screenshot 2024-12-15 193354](https://github.com/user-attachments/assets/32a6f9b3-b8da-45b5-9b5f-1fd190906d30)

  #### Calling subroutines
  Calling a subroutine is easier than calling and initializing a function. All you need to do is write CALL insertSubroutineName(insertVariable_ifneedbe). 

  ## Scope (Not the mouthwash-)
  Scope in FORTRAN mainly depends on what version you are using, as with versions 95 to 2008 are based on units and more newer versions have scope defined by blocks. FORTRAN 77 and older is an entirely complex story that I am too tired to explain, so SKIPPING. 




## Derived Types

... Wait, those aren't objects. 

Yes, good observation. Derived types are not objects, but rather something simplistically unique and a predessecor (in some ways) to objects. 

FORTRAN 77 had records and structures, FORTRAN 90/95 had derived types, then Fortran 2003 finally came out with objects. Though, even with objects added in more modern flavors, FORTRAN remains strongly a procedural language.

So what's a derived type? 

Think of a derived type as a more simplistic object, it can hold variables unique to it. Additionally, derived types can have inheritence (parent and child), but there isn't too much you can do with them, compared to Java's objects.

1. - TYPE insertType_name
1.	    - CHARACTER(establish length here):: var1
2.	    - INTEGER:: var2
3.	    - REAL:: var3
4.	- END TYPE

Creating a type later:
  TYPE(nameof_Type) :: thing
  Thing = nameof_type("YYEEAAAHH!!",5,2.7)
  
Printing from a type:
PRINT \*, thing%var1

PRINT \*, thing%parent%child

EXAMPLE: 


![Screenshot 2024-12-15 200811](https://github.com/user-attachments/assets/ef9feb2c-8828-4723-847a-7214d323b8be)

# You have finished learning the basics of FORTRAN! Congratulations!!!

#### Please refer to the other documents in this directory for more references!







  

