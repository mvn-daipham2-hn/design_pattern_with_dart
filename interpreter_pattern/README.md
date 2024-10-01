# Interpreter Pattern
## Problem-solving:
Use the Interpreter Pattern to build an interpreter for a language.

## UML diagram:

## Benefits:
- Representing each grammar rule in a class makes the language easy to implement.

- Because the grammar is represented by classes, you can easily change or extend the language.

- By adding additional methods to the class structure, you can add new behaviors beyond interpretation, like pretty printing and more sophisticated program validation.

## Uses and Drawback:
- Use interpreter when you need to implement a simple language.

- Appropriate when you have a simple grammar and simplicity is more important than efficiency.

- Used for scripting and programming languages.

- This pattern can become cumbersome when the number of grammar rules is large. In these cases a parser/compiler generator may be more appropriate.