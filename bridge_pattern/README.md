# Bridge Pattern

## Problem-solving: 
Independently extend both the abstraction and the implementation hierarchies without affecting each other.

## UML diagram:
![Bridge_Design](https://github.com/user-attachments/assets/fe0a533d-70d7-4481-acea-01c48d0629fb)

## Benefits:
- Decouples an implementation so that it is not bound permanently to an interface.

- Abstraction and implementation can be extended independently.

- Changes to the concrete abstraction classes don’t affect the client.

## Uses and Drawbacks:
- Useful in graphic and windowing systems that need to run over multiple platforms.

- Useful any time you need to vary an interface and an implementation in different ways.

- Increases complexity.
