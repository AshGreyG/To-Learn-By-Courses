from __future__ import annotations
from typing import TypeVar, Generic, Optional

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
        A : list[Optional[T]] = [None] * (n + 1)
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
        A : list[Optional[T]] = [None] * (n - 1)
        self._copy_forward(0, i, A, 0)
        x = self.A[i]
        self._copy_forward(i + 1, n - i - 1, A, i)
        self.build(A)
        return x

    def insert_first(self, x : T) -> None : self.insert_at(0, x)
    def delete_first(self) -> T :           return self.delete_at(0)
    def insert_last(self, x : T) -> None :  self.insert_at(len(self), x)
    def delete_last(self) -> T :            return self.delete_at(len(self) - 1)

# A **Linked list** stores each item in a node, `node`, a constant-sized container
# with two properties: `node.item` storing the `item`, and `node.next` storing the
# memory address of the node containing the next item in the sequence.

class LinkedListNode(Generic[T]) :
    def __init__(self, x : T) -> None :
        self.item : T = x
        self.next : Optional[LinkedListNode[T]] = None
    
    def later_node(self, i : int) -> "LinkedListNode[T]" : # O(i)
        """
        This method gets the `i`-th node after this node, if the node is None,
        it will assert the error.

        Args:
            i: The nodes amount after this node.
        Returns:
            The `i`-th node after this node.
        """
        if i == 0 :
            return self
        assert self.next is not None
        return self.next.later_node(i - 1)

# Such data structure are sometimes called **pointer-based** or **linked** and
# are much more flexible than array-based data structures because their 
# constituent items can be stored **anywhere** in memory.

# A linked list stores the address of the node storing the first element
# of the list called the **head** of the list, along with linked list's size.
# It's easy to add an item after another item in the list, simply by changing
# some addresses. Adding a new item at the front (head) of the list takes
# O(1) time. However, the only way to find the i-th item in the sequence is
# to step through the items one-by-one

class LinkedListSequence(Generic[T]) :
    def __init__(self) -> None :
        self.head : Optional[LinkedListNode[T]] = None
        self.size : int = 0

    def __len__(self) -> int :
        return self.size

    def __iter__(self) -> T :
        node : Optional[LinkedListNode] = self.head
        while node != None :
            yield node.item
            node = node.next

    def __str__(self) -> str :
        node : Optional[LinkedListNode] = self.head
        result = ""
        while node != None :
            result += (str(node.item) + " → ")
            node = node.next
        result += "None"
        return result

    def build(self, X : list[T]) -> None :
        for a in reversed(X) :
            self.insert_first(a)

    def get_at(self, i : int) -> T :    # O(i)
        node = self.head.later_node(i)
        return node.item

    def set_at(self, i : int, x : T) -> None :
        node = self.head.later_node(i)
        node.item = x

    def insert_first(self, x : T) -> None : # O(1)
        """
        This method inserts the element `x` at the front of head.

        Args:
            x: The inserted element.
        """
        new_node = LinkedListNode(x)
        new_node.next = self.head
        self.head = new_node
        self.size += 1

    def delete_first(self) -> T :   # O(1)
        """
        This method deletes the first element of linked list and returns it.

        Returns:
            x: The first element of original linked list.
        """
        x = self.head.item
        self.head = self.head.next
        self.size -= 1
        return x

    def insert_at(self, i : int, x : T) -> None :   # O(i)
        """
        This method inserts the element `x` at the index `i` of the linked list.

        Args:
            i: The inserted index, new element will at `i` in the new linked list.
            x: The inserted item.
        """
        if i == 0 :
            self.insert_first(x)
            return
        new_node = LinkedListNode(x)
        insert_node = self.head.later_node(i - 1)
        new_node.next = insert_node.next
        insert_node.next = new_node
        self.size += 1

    def delete_at(self, i : int) -> T : # O(i)
        """
        This method deletes the element at the index `i` of the linked list.

        Args:
            i: The index of deleted element.
        """
        if i == 0 :
            return self.delete_first()
        delete_node = self.head.later_node(i - 1)
        x = delete_node.next.item
        delete_node.next = delete_node.next.next
        self.size -= 1
        return x

    def insert_last(self, x : T) -> None : self.insert_at(len(self), x)
    def delete_last(self) -> T :           return self.delete_at(len(self) - 1)

if __name__ == "__main__" :
    # ArraySequence simple tests

    array_seq : ArraySequence[int] = ArraySequence()
    array_seq.build([1, 2, 3, 4])
    print(array_seq.get_at(3))  # 4, array_seq: [1, 2, 3, 4]
    array_seq.set_at(1, 3)
    print(array_seq)            # array_seq: [1, 3, 3, 4]
    array_seq.insert_at(2, 9)
    print(array_seq)            # array_seq: [1, 3, 9, 3, 4]
    array_seq.delete_at(2)
    print(array_seq)            # array_seq: [1, 3, 3, 4]
    array_seq.insert_first(3)
    print(array_seq)            # array_seq: [3, 1, 3, 3, 4]
    array_seq.delete_first()
    print(array_seq)            # array_seq: [1, 3, 3, 4]

    for e in array_seq :
        print(e)

    # LinkedListSequence simple tests

    linked_seq : LinkedListSequence[int] = LinkedListSequence()
    linked_seq.build([1, 2, 3])
    print(linked_seq.get_at(1)) # 2, linked_seq: 1 → 2 → 3 → None
    linked_seq.set_at(1, 9)
    print(linked_seq)           # linked_seq: 1 → 9 → 3 → None
    linked_seq.insert_at(1, 5)
    print(linked_seq)           # linked_seq: 1 → 5 → 9 → 3 → None
    linked_seq.insert_first(2)
    print(linked_seq)           # linked_seq: 2 → 1 → 5 → 9 → 3 → None
    linked_seq.delete_at(1)
    print(linked_seq)           # linked_seq: 2 → 5 → 9 → 3 → None
    linked_seq.delete_first()
    print(linked_seq)           # linked_seq: 5 → 9 → 3 → None