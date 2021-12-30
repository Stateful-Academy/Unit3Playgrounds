import UIKit

let schoolBell = NSNotification.Name(rawValue: "Order66")

class Student {
    
    let name: String
    
    init(name: String) {
        self.name = name
        NotificationCenter.default.addObserver(self, selector: #selector(goHome), name: schoolBell, object: nil)
    }
    
    @objc func goHome() {
        print("\(name) is heading home from school")
    }
}

class Teacher {
    
    let subject: String
    
    init(subject: String) {
        self.subject = subject
        NotificationCenter.default.addObserver(self, selector: #selector(prepareTomorrowsLessonPlan), name: schoolBell, object: nil)
    }
    
    @objc func prepareTomorrowsLessonPlan() {
        print("The \(subject) teacher is preparing a lesson plan")
    }
}

let alex = Student(name: "Alex")
let jose = Student(name: "Jose")
let julie = Student(name: "Julie")
let chemistryTeacher = Teacher(subject: "Chemistry")
let calculusTeacher = Teacher(subject: "Calculus")

NotificationCenter.default.post(name: schoolBell, object: nil)


