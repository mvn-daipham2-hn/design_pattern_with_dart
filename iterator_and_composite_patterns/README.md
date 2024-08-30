# Iterator Pattern
## Problem-solving:
The Iterator Pattern provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

## UML diagram:
![Screenshot 2024-08-30 at 14 50 11](https://github.com/user-attachments/assets/750a5729-6b3b-4dd9-97fc-080115ff9c18)

## Design Principles:
> Single Responsibility: A class should have only one reason to change.

Every responsibility of a class is an area of potential change. More than one responsibility means more than one area of change.

This principle guides us to keep each class to a single responsibility.

## Noted Points:
1. When we say **COLLECTION** we just mean a group of objects. They might be stored in very different data structures like **lists**, **arrays**, and **hashtables**, but they’re still collections. We also sometimes call these **AGGREGATES**.

2. Internal Iterator and External Iterator
  - **External Iterator**: The user manually controls the iteration process (e.g., using Iterator)
  - **Internal Iterator**: An internal iterator is controlled by the iterator itself. In that case, because it’s the iterator that’s stepping through the elements, you have to tell the iterator what to do with those elements as it goes through them (e.g., forEach). That means you need a way to pass an operation to an iterator.
> Internal iterators are less flexible than external iterators because the client doesn’t have control of the iteration. However, they are easier to use because you just hand them an operation and tell them to iterate, and they do all the work for you
