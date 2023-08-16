# StructContract Project

This project consists of a contract, transaction, and script for managing student information using Cadence on the Flow blockchain.

## Table of Contents

- [Requirements](#requirements)
- [Contract](#contract)
  - [StudentStruct](#studentstruct)
  - [PublicFunctions](#publicfunctions)
- [Transaction](#transaction)
  - [TransactionParameters](#transactionparameters)
- [Script](#script)
  - [ScriptParameters](#scriptparameters)
- [Usage](#usage)
- [Author](#author)
- [License](#license)

## Requirements

- [Flow Playground](https://play.flow.com/)
- Cadence Language

## Contract

The `StructContract` contract defines a `Student` struct and provides functions to add and retrieve student information. The contract is responsible for maintaining a dictionary of students.

### StudentStruct

The `Student` struct represents a student with an `id` and a `name`. The struct has a constructor that initializes these properties.

### PublicFunctions

- `addStudent(id: UInt64, name: String)`: Adds a new student to the dictionary of students.
- `getStudent(id: UInt64): Student?`: Retrieves a student's information by their ID.

## Transaction

The `StructTransaction` transaction interacts with the `StructContract` contract to add a student. It imports the `StructContract` contract and executes the `addStudent` function.

### TransactionParameters

- `id`: The ID of the student to add.
- `name`: The name of the student to add.

## Script

The `StructScript` script interacts with the `StructContract` contract to retrieve a student's information by their ID. It imports the `StructContract` contract and calls the `getStudent` function.

### ScriptParameters

- `id`: The ID of the student to retrieve.

## Usage

1. Create your Contract, Transaction and Script files on the [Flow Playground](https://play.flow.com/).
2. Deploy the `StructContract` contract on the Flow blockchain.
3. Use the `StructTransaction` transaction to add a student by providing their ID and name.
4. Use the `StructScript` script to retrieve a student's information by providing their ID.

## Author

This project was created by [Michael](https://github.com/m-azra3l) and serves as a basic example of how to define contracts, transactions, and scripts using Cadence on the Flow blockchain.

Happy coding!

## License

This project is licensed under the [MIT License](LICENSE).
