access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        // Read scope is Areas 1, 2, 3, and 4
        // Write scope is Areas 1, 2, 3, and 4
        pub(set) var a: String

        // Read scope is Areas 1, 2, 3, and 4
        // Write scope is Area 1 only
        pub var b: String

        // Read scope is Areas 1,2, and 3
        // Write scope is Area 1 only
        access(contract) var c: String

        // Read scope is Area 1 only
        // Write scope is Area 1 only
        access(self) var d: String

        //
        // 3 Functions
        //

        // Can be called in Areas 1, 2, 3, and 4
        pub fun publicFunc() {}

        // Can be called in Areas 1, 2, and 3
        // Access is within the contract only
        access(contract) fun contractFunc() {}

        // Can be called in Area 1 only
        // Access is within the struct only
        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
