## Chain of Responsibility
## Problem-solving:
Use the Chain of Responsibility Pattern when you want to give more than one object a chance to handle a request.

## UML diagram:
![Screenshot 2024-09-26 at 15 44 25](https://github.com/user-attachments/assets/a6187ea3-73e5-4eec-967f-4daa056164d7)

• **_Handler_**
- defines an interface for handling requests.
- (optional) implements the successor link.

• **_ConcreteHandler_**
- handles requests it is responsible for.
- can access its successor.
- if the ConcreteHandler can handle the request, it does so; otherwise, it forwards the request to its successor.
  
• **_Client_**
- initiates the request to a ConcreteHandler object on the chain.

## Benefits:
- Decouples the sender of the request and its receivers.

- Simplifies your object because it doesn’t have to know the chain’s structure and keep direct references to its members.

- Allows you to add or remove responsibilities dynamically by changing the members or order of the chain.

## Uses and Drawback:
- Commonly used in Windows systems to handle events like mouse clicks and keyboard events.

- Execution of the request isn’t guaranteed; it may fall off the end of the chain if no object handles it (this can be an advantage or a disadvantage).

- Can be hard to observe the runtime characteristics and debug.
