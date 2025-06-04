from __future__ import annotations
from typing import TypeVar, Generic, Optional
from typing_extensions import override

T = TypeVar("T")

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