

--------------------------Insert in Sorted way in a Sorted DLL------------------------



Given a sorted doubly linked list and an element x, you need to insert the element x into the correct position in the sorted Doubly linked list(DLL).

Note: The DLL is sorted in ascending order

Example:

Input: LinkedList: 3->5->8->10->12 , x = 9

Output: 3->5->8->9->10->12

Explanation: Here node 9 is inserted in the Doubly Linked-List


class Solution {
    public Node sortedInsert(Node head, int x) {
        Node insert =new Node(x);
        Node element=head;
        if(head==null || head.data>=x)
    {
        insert.next=head;
        head=insert;
        return head;
    }
    while(element.next!=null && element.next.data<x)
    {
        element =element.next;
        
    }
    insert.next=element.next;
    element.next=insert;
    return head;
    }
}
