// Define the contract
pub contract StructContract {

    // Define the Student struct
    pub struct Student {
        pub let id: UInt64
        pub let name: String

        // Constructor for the Student struct
        init(id: UInt64, name: String) {
            self.id = id
            self.name = name
        }
    }

    // Declare a dictionary to hold Student structs
    pub var students: {UInt64: Student}

    // Initialize the contract
    init() {
        self.students = {}
    }

    // Function to add a Student to the dictionary
    pub fun addStudent(id: UInt64, name: String) {
        let student = Student(id: id, name: name)
        self.students[id] = student
    }

    // Function to get a Student by ID
    pub fun getStudent(id: UInt64): Student? {
        return self.students[id]
    }
}