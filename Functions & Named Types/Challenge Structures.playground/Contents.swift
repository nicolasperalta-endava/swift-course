//: ## Episode 06: Challenge - Structures
/*:
 # Challenge 1
1. Create a structure named `Student` with three properties: first name, last name and grade.
2. Create a structure named `Classroom` with two properties: the subject, and an array of students.
3. Create a method that returns the highest grade in the classroom.
*/
struct Student{
    let firstName: String
    let lastName: String
    var grade: Int
}

struct Classroom{
    let subject: String
    let students: [Student]
    
    func getHighestGrade()->Int?{
        var grades: [Int] = []
        for student in students {
            grades.append(student.grade)
        }
        return grades.max()
    }
}


/*:
 # Challenge 2
 1. Create an instance of a `Classroom`
 2. Use the `getHighestGrade` method
*/

var classroom: Classroom = Classroom(
    subject: "subject test",
    students: [
        Student(firstName: "nicolas", lastName: "peralta", grade: 50),
        Student(firstName: "trinidad", lastName: "gramaglia", grade: 100),
        Student(firstName: "jose", lastName: "quinteros", grade: 60)
    ]
)

classroom.getHighestGrade()
