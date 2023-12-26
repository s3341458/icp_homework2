// File: Main.mo
import Quicksort "Quicksort";
import Array "mo:base/Array";



actor {
  public func quickSort(array: [Int]) : async [Int] {
    let varArray = Array.thaw<Int>(array);
    Quicksort.quicksort(varArray);
    return Array.freeze<Int>(varArray);
  }
}

