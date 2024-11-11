! Mars DiPillo
! Implementing structures and records in Fortran 95
! CANNOT implement objects, that is not accessible and allowed until Fortran 2003
program typeExample

type person
    character(len=50):: f_name, l_name
end type

type instructor
    type(person) :: person
    integer:: fid
end type
type student
    type(person) :: person
    integer:: sid 
    integer:: credits
end type student

type course
    character(20):: c_name
    integer:: cid
    character(3):: prefix
end type

type(instructor) veilleux
type(student):: maxwell
type(course):: langNorgs

veilleux = instructor(person("Nanette", "Veilleux"), 001))
maxwell = student(person("Maxwell", "DiPillo"), 100, 12))
langNorgs = course("Programming Languages and Organization", 20, "CS")

print *, veilleux%person%f_name, veilleux%person%l_name, veilleux%fid
print *, ""
print *, maxwell%sid, maxwell%person%f_name, maxwell%person%l_name, maxwell%credits
print *, ""
print *, langNorgs%c_name, langNorgs%cid, langNorgs%prefix

end program typeExample

! Source that helped: https://icl.utk.edu/~mgates3/docs/fortran.html

    