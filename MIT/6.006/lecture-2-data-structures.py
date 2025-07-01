from __future__ import annotations
from typing import (
    TypeVar,
    Generic,
    Optional,
    Union,
    Literal
)
from typing_extensions import override

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
# to step through the items one-by-one.

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

# The array's dynamic sequence operations require linear time with respect to the
# length of array A. Sometimes appending to the end of a Python List requires O(n)
# time to transfer the array to a larger allocation in memory, so sometimes appending
# to a Python List takes linear time. 

# However, allocating additional space in the right way can guarantee that any
# sequence of n insertions only takes at most O(n) time, and insertion will take
# O(1) time per insertion **on average**. We call this asymptotic running time
# **amortized constant time**

# A typical implementing of a dynamic array will allocate **double** the amount of
# space needed to store the current array, sometimes referred to as **table doubling**.
# Python Lists allocate additional space according to the following formula

# new_allocated = (newsize >> 3) + (newsize < 9 ? 3 : 6)

# The additional allocation is roughly one eight of the size of the array being
# appended (bit shifting the size to the right by 3 is equivalent to floored
# division by 8).

class DynamicArraySequence(ArraySequence[T]) :
    @override
    def __init__(self, r : int = 2) -> None :
        super().__init__()
        self.size : int = 0
        self.r : int = r
        self._compute_bounds()

    @override
    def build(self, X : list[T]) -> None :  # O(n)
        for a in X :
            self.insert_last(a)

    def _compute_bounds(self) -> None : # O(1)
        """
        This method computes the upper and lower bounds of re-allocating operation, 
        according to the length of `A`.
        """
        self.upper : int = len(self.A)
        self.lower : int = len(self.A) // (self.r * self.r)
        
    def _resize(self, n : int) -> None :    # O(1) or O(n)
        """
        This method resizes the array to allocate new memory.

        Args:
            n: The size that array needs to allocate to.
        """
        if (self.lower < n < self.upper) : return
        m = max(n, 1) * self.r

        # default r is 2, which is the table doubling

        A : Optional[T] = [None] * m
        self._copy_forward(0, self.size, A, 0)
        self.A = A
        self._compute_bounds()

    @override
    def insert_last(self, x : Optional[T]) -> None :  # O(1)a, a is a constant
        """
        This method inserts the element at the last index of array.

        Args:
            x: The inserted element, which can be `None` (used in `insert_at` method)
        """
        self._resize(self.size + 1)
        self.A[self.size] = x
        self.size += 1

    @override
    def delete_last(self) -> T :    # O(1)a, a is a constant
        """
        This method deletes the last element of array.

        Returns:
            The last element of the array.
        """
        x = self.A[self.size - 1]
        self.A[self.size - 1] = None
        self.size -= 1
        self._resize(self.size)
        return x

    @override
    def insert_at(self, i : int, x : T) -> None :   # O(n)
        """
        This method inserts element `x` at index `i`.

        Args:
            i: The insert index, which is also the index of new inserted element in
                new array.
            x: New inserted element.
        """
        self.insert_last(None)
        self._copy_backward(i, self.size - (i + 1), self.A, i + 1)
        self.A[i] = x

    @override
    def delete_at(self, i : int) -> T :
        """
        This method deletes the element at index `i`.

        Args:
            i: The index of deleted element.
        """
        x = self.A[i]
        self._copy_forward(i + 1, self.size - (i + 1), self.A, i)
        self.delete_last()
        return x

    @override
    def insert_first(self, x : T) -> None : self.insert_at(0, x)

    @override
    def delete_first(self) -> T : return self.delete_at(0)

K = TypeVar("K")
V = TypeVar("V")

class SetPair(Generic[K, V]) :
    def __init__(self, k : k, v : V) -> None :
        self.key = k
        self.value = v

    def __str__(self) -> str :
        return "({}, {})".format(self.key, self.value)

class Set(Generic[K, V]) :
    def __init__(self) -> None : 
        self.KV : DynamicArraySequence[SetPair[K, V]] = DynamicArraySequence()

    def __len__(self) -> int :
        return len(self.KV)

    def __str__(self) -> str :
        result = "{ "
        for kv in self.KV :
            if kv != None :
                result += str(kv) + ", "
        result += " }"
        return result

    def build(self, X : list[tuple[K, V]]) -> None :
        """
        This method builds the `Set` from a list of k-v tuples, it first maps
        `tuple[K, V]` to `SetPair[K, V]`

        Args:
            X: A list of k-v tuples, which will be mapped to `SetPair[K, V]`
        """
        self.KV.build([SetPair(tup[0], tup[1]) for tup in X])

    def insert(self, x : tuple[K, V]) -> None :
        """
        This method inserts the k-v tuple to set, if the key exists, then 
        overwrites the value, if the key doesn't exist, append the pair at
        the end of the array.

        Args:
            x: The element to insert to the set.
        """
        pair : SetPair[K, V] = SetPair(x[0], x[1])
        for i in range(len(self.KV)) :
            if self.KV.get_at(i).key == pair.key :
                self.KV.set_at(i, pair)
                return
        self.KV.insert_last(pair)

    def find(
        self, 
        k : K,
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> Union[SetPair[K, V], tuple[K, V], None] :
        """
        This method returns the stored item with key `k`.

        Args:
            k: The key of item you want to find.
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
        """
        
        match mode :
            case "tuple" :
                for kv in self.KV :
                    if kv.key == k :
                        return (kv.key, kv.value)
            case "set_pair" :
                for kv in self.KV :
                    if kv.key == k :
                        return kv

    def delete(self, k : K) -> None :
        """
        This method deletes the item whose key is `k` in set.

        Args:
            k: The key of item to be deleted.
        """
        for i in range(len(self.KV)) :
            if self.KV.get_at(i).key == k :
                self.KV.delete_at(i)
                return

    def iter_ord(
        self, 
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> list[Union[SetPair[K, V], tuple[K, V]]] :
        """
        This method returns the stored items one-by-one in key order.

        Args:
            mode: The mode of returned list, if `mode` is `"tuple"`, then
                the returned list will be a list of tuple, if `mode` is `"set_pair"`,
                then the returned list will be a list of `SetPair`.
        Returns:
            The list of stored items one-by-one in key order.
        """

        match mode :
            case "tuple" :
                result : list[tuple[K, V]] = [(kv.key, kv.value) for kv in self.KV if kv != None]
                return sorted(result, key = lambda x : x[0])
            case "set_pair" :
                result : list[SetPair[K, V]] = [SetPair(kv.key, kv.value) for kv in self.KV if kv != None]
                return sorted(result, key = lambda x : x.key)

    def find_min(
        self,
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> Union[SetPair[K, V], tuple[K, V]] :
        """
        This method returns the minimal item in the set.

        Args:
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
        Returns:
            The minimal item.
        """

        match mode :
            case "tuple" :
                tuple_list : list[tuple[K, V]] = [(kv.key, kv.value) for kv in self.KV if kv != None]
                result : tuple[K, V] = min(tuple_list, key = lambda x : x[0])
                return result
            case "set_pair" :
                pair_list : list[SetPair[K, V]] = [kv for kv in self.KV if kv != None]
                result : SetPair[K, V] = min(pair_list, key = lambda x : x.key)
                return result

    def find_max(
        self,
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> Union[SetPair[K, V], tuple[K, V]] :
        """
        This method returns the maximal item in the set.

        Args:
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
        Returns:
            The maximal item.
        """

        match mode :
            case "tuple" :
                tuple_list : list[tuple[K, V]] = [(kv.key, kv.value) for kv in self.KV if kv != None]
                result : tuple[K, V] = max(tuple_list, key = lambda x : x[0])
                return result
            case "set_pair" :
                pair_list : list[SetPair[K, V]] = [kv for kv in self.KV if kv != None]
                result : SetPair[K, V] = max(pair_list, key = lambda x : x.key)
                return result

    def _find_direction(
        self,
        k : K,
        mode : Literal["tuple", "set_pair"] = "tuple",
        reverse : bool = False
    ) -> Union[SetPair[K, V], tuple[K, V], None] :
        """
        This method returns the stored item with smallest key larger than k.

        Args:
            k: The key of item you want to find.
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
            reverse: It controls whether the function finds the next item or
                the previous item.
        """

        match mode :
            case "tuple" :
                tuple_list : list[tuple[K, V]] = [(kv.key, kv.value) for kv in self.KV if kv != None]
                tuple_result = sorted(tuple_list, key = lambda x : x[0], reverse = reverse)
                for index, kv_tuple in enumerate(tuple_result) :
                    if kv_tuple[0] == k and index < len(tuple_result) - 1 :
                        return tuple_list[index + 1]
                    elif index == len(tuple_result) - 1 :
                        return None
                return None
            case "set_pair" :
                pair_list : list[SetPair[K, V]] = [kv for kv in self.KV if kv != None]
                pair_result = sorted(pair_list, key = lambda x : x.key, reverse = reverse)
                for index, kv_pair in enumerate(pair_result) :
                    if kv_pair.key == k and index < len(pair_result) - 1 :
                        return pair_list[index + 1]
                    elif index == len(pair_result) - 1 :
                        return None

    def find_next(
        self,
        k : K,
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> Union[SetPair[K, V], tuple[K, V], None] :
        """
        This method returns the stored item with smallest key larger than k.

        Args:
            k: The key of relative item.
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
        """

        return self._find_direction(k, mode, reverse = False)

    def find_prev(
        self,
        k : K,
        mode : Literal["tuple", "set_pair"] = "tuple"
    ) -> Union[SetPair[K, V], tuple[K, V], None] :
        """
        This method returns the stored item with largest key smaller than k.

        Args:
            k: The key of relative item.
            mode: The mode of returned item, if `mode` is `"tuple"`, then the
                returned item will be a tuple, if `mode` is `"set_pair"` then
                the returned item will be a `SetPair`
        """

        return self._find_direction(k, mode, reverse = True)


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

    # DynamicArraySequence simple tests

    dyn_seq : DynamicArraySequence[int] = DynamicArraySequence()
    dyn_seq.build([1, 3, 4, 2])
    print(dyn_seq.get_at(2))    # 4 dyn_seq: [1, 3, 4, 2]
    dyn_seq.set_at(1, 8)
    print(dyn_seq)  # dyn_seq: [1, 8, 4, 2, None, None, None, None]
    dyn_seq.delete_last()
    dyn_seq.delete_last()
    print(dyn_seq)  # dyn_seq: [1, 8, None, None]

    # Set simple tests

    dyn_set : Set[str, int] = Set()
    dyn_set.build([("ashgrey", 21), ("huaier", 19), ("rust", 13)])
    print(dyn_set)  # { (ashgrey, 21), (huaier, 19), (rust, 13),  }
    dyn_set.insert(("kotlin", 14))
    print(dyn_set)  # { (ashgrey, 21), (huaier, 19), (rust, 13), (kotlin, 14),  }
    dyn_set.delete("rust")
    print(dyn_set)  # { (ashgrey, 21), (huaier, 19), (kotlin, 14),  }
    dyn_set.insert(("ashgrey", 22))
    print(dyn_set)  # { (ashgrey, 22), (huaier, 19), (kotlin, 14),  }
    print("Find: " + str(dyn_set.find("ashgrey")))  # ('ashgrey', 21)
    print("Find: " + str(dyn_set.find("kotlin", mode = "set_pair")))  # (kotlin, 14)
    print(dyn_set.iter_ord())

    for kv in dyn_set.iter_ord(mode = "set_pair") :
        print("({}, {})".format(kv.key, kv.value))

    print(dyn_set.find_min())
    print(dyn_set.find_min("set_pair"))
    print(dyn_set.find_max())
    print(dyn_set.find_max("set_pair"))
    print(dyn_set.find_next("ashgrey")) # ('huaier', 19)
    print(dyn_set.find_next("huaier", "set_pair"))  # (kotlin, 14)
    print(dyn_set.find_next("kotlin", "set_pair"))  # None
    print(dyn_set.find_prev("ashgrey")) # None
    print(dyn_set.find_prev("huaier"))  # ('kotlin', 14)
    print(dyn_set.find_prev("kotlin", "set_pair"))  # (huaier, 19)