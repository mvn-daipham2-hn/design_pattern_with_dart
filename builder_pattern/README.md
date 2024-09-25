# Builder Pattern
## Problem-solving:
Use the Builder Pattern to encapsulate the construction of a product and allow it to be constructed in steps.

## UML diagram:
![Screenshot 2024-09-25 at 16 15 06](https://github.com/user-attachments/assets/b8856ec3-412c-42e4-a22a-f0cc34781560)

## Benefits:
- Encapsulates the way a complex object is constructed.

- Allows objects to be constructed in a multistep and varying process (as opposed to one step factories).

- Hides the internal representation of the product from the client.

- Product implementations can be swapped in and out because the client only sees an abstract interface.

## Uses and Drawbacks
- Often used for building composite structures.

- Constructing objects requires more domain knowledge of the client than when using a Factory.
