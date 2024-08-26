# Command Pattern
> Take encapsulation to a whole new level: we’re going to encapsulate method invocation.

## Problem-solving: 
The Command Pattern encapsulates a request as an object, thereby letting you parameterize other objects with different requests, queue or log requests, and support undoable operations.

## UML diagram:
![Screenshot 2024-08-21 at 11 33 35](https://github.com/user-attachments/assets/5cb20d81-bced-48d4-ae89-017648cc5c53)

## Noted Points:
1. A null object is useful when you don’t have a meaningful object to return, and yet you want to remove the responsibility for handling null from the client(E.g. NoCommand class).

## Applicable: 
1. **Undo/Redo Operations**: When you want to implement undoable operations, like in text editors, where each command (e.g., typing, deleting) can be undone or redone.

2. **Macro Commands**: When you need to execute a sequence of commands, like in a game where a series of actions (e.g., move, attack, defend) are combined into a single macro.

3. **Queue of Commands**: In scenarios where commands need to be queued for later execution, like scheduling jobs in a background process or task management system.

4. **Logging Changes**: When you want to log changes or operations to maintain a history, making it easier to track what has been done.

5. **GUI Buttons and Menus**: When buttons or menu items in a GUI need to trigger specific actions, the Command Pattern helps encapsulate the action, making it reusable and decoupled from the GUI code.

