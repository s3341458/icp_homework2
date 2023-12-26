import Iter "mo:base/Iter";

module {

  public func quicksort(arr : [var Int]) : () {
    innerQuicksort(arr, 0, arr.size() - 1);
  };

  private func innerQuicksort(arr : [var Int], low : Nat, high : Nat) : () {
    if (low < high) {
      let pivotIndex = partition(arr, low, high);
      innerQuicksort(arr, low, pivotIndex - 1);
      innerQuicksort(arr, pivotIndex + 1, high);
    };
  };

  private func partition(arr : [var Int], low : Nat, high : Nat) : Nat {
    let pivot = arr[high];
    var i: Nat = low - 1;

    for (j in Iter.range(low, high)) {
      if (arr[j] < pivot) {
        i += 1;
        swap(arr, i, j);
      };
    };

    swap(arr, i + 1, high);
    return i + 1;
  };

  private func swap(arr : [var Int], i : Nat, j : Nat) : () {
    let temp = arr[i];
    arr[i] := arr[j];
    arr[j] := temp;
  };
}
