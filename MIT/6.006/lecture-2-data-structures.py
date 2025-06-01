from typing import TypeVar, Generic

T = TypeVar("T")

# Sequences are generalizations of stacks and queues, which support a subset of
# sequence operations

# 1. Array Sequence implementation

# A computer program wants to store two arrays, each storing ten 64-bit words.
# The program makes separate requests for two chunks of memory (640 bits each),
# and the operating system fulfills the request by reserving the first ten words
# of the process's assigned address space to the first array A, and the second
# ten words of the address space to the second array B. If we want to add a new
# element w to A, we could request eleven new words of memory, copy A to the
# beginning of the new memory allocation, store w at the end, and free the first
# ten words to the process's address space for future memory requests.

# Implementing a sequence using an array, where index i in the array corresponds
# to item i in the sequence allows `get_at` and `set_at` to be O(1) time because
# of our RAM (random access machine). However, when deleting or inserting into
# the sequence, we need to move items and resize the array, meaning these operations
# could take linear-time in the worst time.

class ArraySequence(Generic[T]) :
    def __init__(self) -> None :            # O(1)
        self.A : list[T] = []
        self.size : int = 0

    def __len__(self) -> int :              # O(1)
        return self.size

    def __iter__(self) -> T :               # O(n)
        yield from self.A

    def __str__(self) -> str :
        return str(self.A)

    def build(self, X : list[T]) -> None :  # O(n)
        self.A = [a for a in X]
        self.size = len(self.A)

    def get_at(self, i : int) -> T :        # O(1)
        """
        This method gets the element at index `i`.

        Args:
            i: Index of the element.
        Returns:
            The element at index `i`.
        """
        return self.A[i]

    def set_at(self, i : int, x : T) -> None :  # O(1)
        """
        This method sets the element as `x` at index `i`.

        Args:
            i: Index of the element.
            x: The set element.
        """
        self.A[i] = x

    def _copy_forward(self, i : int, n : int, A : list[T], j : int) -> None :   # O(n)
        """
        This method copies the element of `self.A` in `[i, i + n)` to the `[j, j + n)`
        spaces in array `A`.

        Args:
            i: The start index of copy-from array part (which is the array of this class).
            n: The length of copied part.
            A: The target array.
            j: The start index of copy-to array part.
        Examples:
            ``` python
            array_seq = ArraySequence()
            array_seq.build([1, 3, 4, 2, 5])

            A : list[int] = [0] * 3
            array_seq._copy_forward(2, 3, A, 0)
            print(A) # [4, 2, 5]
            ```
        """
        for k in range(n) :
            A[j + k] = self.A[i + k]

    def _copy_backward(self, i : int, n : int, A : list[T], j : int) -> None :  # O(n)
        """
        This method copies the element of `self.A` in `[i, i + n)` to the `[j, j + n)`
        spaces in array `A`. But in backward method instead.

        Args:
            i: The start index of copy-from array part (which is the array of this class).
            n: The length of copied part.
            A: The target array.
            j: The start index of copy-to array part.
        Examples:
            ``` python
            array_seq = ArraySequence()
            array_seq.build([1, 3, 4, 2, 5])

            A : list[int] = [0] * 3
            array_seq._copy_backward(2, 3, A, 0)
            print(A) # [4, 2, 5]
            ```
        """
        for k in range(n - 1, -1, -1) :
            A[j + k] = self.A[i + k]

    def insert_at(self, i : int, x : T) -> None : # O(n)
        """
        This method inserts the element `x` in index `i`.

        Args:
            i: The insert index, which is also the index of new inserted element in
                new array.
            x: New inserted element.
        """
        n = len(self)
        A : list[T | None] = [None] * (n + 1)
        self._copy_forward(0, i, A, 0)
        A[i] = x
        self._copy_forward(i, n - i, A, i + 1)
        self.build(A)

    def delete_at(self, i : int) -> T : # O(n)
        """
        This method deletes the element in index `i`.

        Args:
            i: The deleted element index.
        Returns:
            The element at index `i`, which is the deleted element.
        """
        n = len(self)
        A : list[T | None] = [None] * (n + 1)
        self._copy_forward(0, i, A, 0)
        x = self.A[i]
        self._copy_forward(i + 1, n - i - 1, A, i)
        self.build(A)
        return x

    def insert_first(self, x : T) -> None : self.insert_at(0, x)
    def delete_first(self) -> T :           return self.delete_at(0)
    def insert_last(self, x : T) -> None :  self.insert_at(len(self), x)
    def delete_last(self) -> T :            return self.delete_at(len(self) - 1)

if __name__ == "__main__" :
    array_seq = ArraySequence()
    array_seq.build([1, 2, 3, 4])
    print(array_seq.get_at(3))  # 4, array_seq: [1, 2, 3, 4]
    array_seq.set_at(1, 3)
    print(array_seq)            # array_seq: [1, 3, 3, 4]