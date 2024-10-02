# Memento Pattern(Token)
## Problem-solving:
Use the Memento Pattern when you need to be able to return an object to one of its previous states.

## UML diagram:
![Screenshot 2024-10-02 at 15 56 41](https://github.com/user-attachments/assets/f29ec86f-2da9-4c8c-a4a9-c8b99a55fa52)

• **_Memento_**
- stores the internal state of the Originator object. The memento may store as much or as little of the originator's internal state as necessary at its originator's discretion.
- protects against access by objects other than the originator. Mementos have effectively two interfaces. The Caretaker sees a narrow interface to the Memento—it can only pass the memento to other objects. Originator, in contrast, sees a wide interface, one that lets it access all the data necessary to restore itself to its previous state. Ideally, only the originator that produced the memento would be permitted to access the memento's internal state.
  
• **_Originator_**
- creates a memento containing a snapshot of its current internal state.
- uses the memento to restore its internal state.
  
• **_Caretaker_**
- is responsible for the memento's safekeeping.
- never operates on or examines the contents of a memento.

## Benefits:
- Keeping the saved state external from the key object helps to maintain cohesion.

- Keeps the key object’s data encapsulated.

- Provides easy-to-implement recovery capability.

## Uses and Drawback:
- The Memento is used to save state.

- A drawback to using Memento is that saving and restoring state can be time consuming.
