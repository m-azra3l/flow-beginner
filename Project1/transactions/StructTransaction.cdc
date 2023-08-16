// Import StuctContract
import StructContract from 0x02

// Transaction to add a student
transaction(id: UInt64, name: String) {
    
    prepare(acct: AuthAccount) {}

    execute {
        StructContract.addStudent(id: id, name: name)
        log("Student Added")
    }
}