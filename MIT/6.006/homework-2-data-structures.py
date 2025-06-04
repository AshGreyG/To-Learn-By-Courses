from __future__ import annotations
from typing import Generic, TypeVar, Optional
from util.linked_list import LinkedListSequence, LinkedListNode

T = TypeVar("T")

# Recitation-Exercises-1

# Suppose the next pointer of the last node of a linked list points
# to an earlier node in the list, creating a cycle. Given a pointer
# to the head of the list (without knowing its size), describe a linear
# time algorithm to find the number of nodes in the cycle. Can you
# do this while using only constant additional space outside of the
# original linked list?

class CycleLinkedList(LinkedListSequence[T]) :
    def __init__(self) -> None :
        super().__init__()

    def get_node_at(self, i : int) -> Optional[LinkedListNode] :
        node = self.head
        count = 0
        while node.next != None :
            node = node.next
            count += 1
            if count == i :
                return node
        return node # Which is None

    def change_last(self, target : Optional[LinkedListNode]) -> None :
        node = self.head
        while node.next != None :
            node = node.next
        node.next = target

if __name__ == "__main__" :
    cycle : CycleLinkedList[int] = CycleLinkedList()
    cycle.build([1, 2, 3, 4, 5, 6])
    cycle.change_last(cycle.get_node_at(2))

    # This creates a cycle linked list.

    assert cycle.get_node_at(2) == cycle.get_node_at(6)

    # The solutions to Homework 1

    # Begin with two pointers pointing at the head of the linked list:
    # one slow pointer and one fast pointer. The pointer take turns
    # traversing the nodes of the linked list, starting with the fast pointer.
    # On the slow pointer's turn, the slow pointer simply moves to the next
    # node in the list; while on the fast pointer's turn, the fast pointer
    # initially moves to the next node, but then moves on to the next node's
    # next node before ending its turn. Every time the fast pointer visits a
    # node, it checks to see whether it's the same node that the slow pointer
    # is pointing to. If they are the same, then the fast pointer must have
    # make a full loop around the cycle, to meet the slow pointer at some node
    # v on the cycle.

    # Count fast pointer steps as `F`, count slow pointer steps as `S`, then
    # the length of cycle is `F - S`
    
    flag = False
    slow_ptr = fast_ptr = cycle.head
    fast_ptr = fast_ptr.next

    print("{} {}".format(slow_ptr.item, fast_ptr.item))

    if fast_ptr == slow_ptr : 
        flag = True

    fast_ptr = fast_ptr.next

    print("{} {}".format(slow_ptr.item, fast_ptr.item))
    
    if fast_ptr == slow_ptr :
        flag = True

    slow_ptr = slow_ptr.next

    while flag == False :
        fast_ptr = fast_ptr.next
        print("{} {}".format(slow_ptr.item, fast_ptr.item))
        if fast_ptr == slow_ptr : flag = True
        fast_ptr = fast_ptr.next.next
        print("{} {}".format(slow_ptr.item, fast_ptr.item))
        if fast_ptr == slow_ptr : flag = True
        slow_ptr = slow_ptr.next

