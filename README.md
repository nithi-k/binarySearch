# BinarySearch (Swift)

Binary search is an efficient algorithm for finding an item from a sorted list of items. It works by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.

Here's how it works:

1.Set the lower and upper bounds of the search area to the start and end of the list, respectively.

2.Find the midpoint of the search area by averaging the lower and upper bounds.

3.If the item you're searching for is less than the item at the midpoint, set the upper bound to be the midpoint - 1. If the item you're searching for is greater than the item at the midpoint, set the lower bound to be the midpoint + 1.

4.If the search area has been narrowed down to one item, and that item is not the item you're searching for, the item is not in the list. If the search area has been narrowed down to one item, and that item is the item you're searching for, you've found the item.

Repeat steps 2-4 until the item is found or the search area has been narrowed down to one item.
