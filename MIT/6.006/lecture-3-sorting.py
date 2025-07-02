from typing import (
    TypeVar,
    Generic
)

# Sorting an array A of comparable items into increasing order is a common
# subtask of many computational problems.

# + Selection sort maintains and grows a subset the largest i items in
#   sorted order.
# + Insertion sort maintains and grows a subset of the first i input
#   items in sorted order.

T = TypeVar("T")

class Sort(Generic[T]) :    # This provides the generic.
    @staticmethod
    def selection_sort(A : list[T]) :
        for i in range(len(A) - 1, 0, -1) : # O(n) loop over array
            m = i                           # O(1) initial index of max
            for j in range(i) :             # O(i) search for max in A[:i]
                if A[m] < A[j] :            # O(1) check for larger value
                    m = j                   # O(1) new max found
            A[m], A[i] = A[i], A[m]         # O(1) swap
            print(A)
        print("=" * 10)

    # The **selection sort** algorithm repeatedly scans the array for the
    # largest item not yet sorted and swaps it with item A[i], Selection
    # sort can require Ω(n^2) comparisons, but will perform at most O(n)
    # swaps in the worst case.

    @staticmethod
    def insertion_sort(A : list[T]) :
        for i in range(1, len(A)) :             # O(n) loop over array
            j = i                               # O(1) initialize pointer
            while j > 0 and A[j] < A[j - 1] :   # O(i) loop over prefix
                A[j - 1], A[j] = A[j], A[j - 1] # O(1) swap
                j = j - 1                       # O(1) decrement j
            print(A)
        print("=" * 10)

    # The algorithm repeatedly swaps item A[i] with the item to its left until
    # the left item is no larger than A[i]. As can be seen from the code, 
    # insertion sort can require Ω(n^2) comparisons and Ω(n^2) swaps in the
    # worst case.

    # Both insertion sort and selection sort are **in-place** algorithms,
    # meaning 

if __name__ == "__main__" :
    test_array = [3, 2, 10, 1, 9]
    Sort.selection_sort(test_array)

    # [3, 2, 9, 1, 10]
    # [3, 2, 1, 9, 10]
    # [1, 2, 3, 9, 10]
    # [1, 2, 3, 9, 10]

    test_array = [3, 2, 10, 1, 9]
    Sort.insertion_sort(test_array)

    # [2, 3, 10, 1, 9]
    # [2, 3, 10, 1, 9]
    # [1, 2, 3, 10, 9]
    # [1, 2, 3, 9, 10]