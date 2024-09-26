## Chain of Responsibility
## Problem-solving:
Use the Chain of Responsibility Pattern when you want to give more than one object a chance to handle a request.

## UML diagram:

## Benefits:
- Decouples the sender of the request and its receivers.

- Simplifies your object because it doesn’t have to know the chain’s structure and keep direct references to its members.

- Allows you to add or remove responsibilities dynamically by changing the members or order of the chain.

## Uses and Drawback:
- Commonly used in windows systems to handle events like mouse clicks and keyboard events.

- Execution of the request isn’t guaranteed; it may fall off the end of the chain if no object handles it (this can be an advantage or a disadvantage).

- Can be hard to observe the runtime characteristics and debug.