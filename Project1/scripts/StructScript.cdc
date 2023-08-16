// Import StuctContract
import StructContract from 0x02

pub fun main(id: UInt64): StructContract.Student? {
  return StructContract.getStudent(id: id)!
}
