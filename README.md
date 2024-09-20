# Some Design Principles:
1. Encapsulate what varies.
    - [Strategy Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/strategy_pattern/README.md#design-principles) 
2. Favor composition over inheritance
   - [Strategy Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/strategy_pattern/README.md#design-principles)
3. Program to interfaces, not implementations.
   - [Strategy Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/strategy_pattern/README.md#design-principles)
4. Strive for loosely coupled designs between objects that interact.
   - [Observer Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/observer_pattern/README.md#design-principles)
5. **Open-Closed principle**: Classes should be open for extension but closed for modification.
   - [Decorator Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/decorator_pattern/README.md#design-principles)
6. **The Dependency Inversion**: Depend on abstractions. Do not depend on concrete classes.
    - [Factory Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/factory_pattern/README.md#design-principles)   
7. **Principle of Least Knowledge** - talk only to your immediate friends. It is also called the **Law of Demeter**
    - [Facade Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/adapter_and_facade_patterns/README.md#design-principles)
8. **The Hollywood Principle**: Don’t call us, we’ll call you.
    - [Template Method Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/template_method_pattern/README.md#design-principles)
9. **Single Responsibility**: A class should have only one reason to change.
    - [Iterator Pattern](https://github.com/mvn-daipham2-hn/design_pattern_with_dart/blob/main/iterator_and_composite_patterns/README.md#design-principles)
    
# Patterns in the Real World
## What is a design pattern?
> A Pattern is a solution to a problem in a context.
<details>
    <summary>View more details</summary>

- The **context** is the situation in which the pattern applies. This should be a recurring situation. E.g. You have a collection of objects.
- The **problem** refers to the goal you are trying to achieve in this context, but it also refers to any constraints that occur in the context. E.g. You need to step through the objects without exposing the collection’s implementation.
- The **solution** is what you’re after: a general design that anyone can apply which resolves the goal and set of constraints. E.g. Encapsulate the iteration into a separate class.

_**If you find yourself in a context with a problem that has a goal that is affected by a set of constraints, then you can apply
a design that resolves the goal and constraints and leads to a solution.**_
</details>

## “Force” terminology:
> In design patterns, "**forces**" refer to the various constraints, requirements, and trade-offs that affect the design decision.

<details>
    <summary>View more details</summary>
These forces shape how a pattern is applied and help explain why a particular pattern is appropriate for solving a specific problem. They typically include aspects such as:

- System Requirements: What the software needs to achieve, including functionality and performance expectations.
  
- Trade-offs: The compromises between different design options, such as simplicity vs. flexibility, or memory usage vs. processing speed.

- Context: The specific environment or circumstances under which the pattern is being applied.

- Limitations: Any technical or organizational constraints, like programming language features, time, or team experience.

- Non-functional Requirements: Performance, scalability, security, and maintainability needs that influence the design.
  
In short, "forces" are the factors that drive the need for a particular pattern and guide its application in solving a problem effectively.
</details>

## Pattern Categories:
> Design Patterns are grouped into 3 categories. 
<details>
    <summary>View more details</summary>

1. **Creational Patterns**: Deal with object creation mechanisms, like **Singleton**, **Factory**, and **Builder**. Creational patterns involve object instantiation and all provide a way to decouple a client from the objects it needs to instantiate.
   
2. **Structural Patterns**: Focus on how classes and objects are composed, like **Adapter**, **Proxy**, and **Decorator**. Structural patterns let you compose classes or objects into larger structures.
   
3. **Behavioral Patterns**: Address communication between objects, like **Observer**, **Strategy**, and **Command**. Any pattern that is a Behavioral Pattern is concerned with how classes and objects interact and distribute responsibility.
</details>

> Patterns are also classified by a second attribute: whether or not the pattern deals with classes or objects:
<details>
    <summary>View more details</summary>

1. **Class patterns** describe how relationships between classes are defined via **inheritance**. Relationships in class patterns are established at **compile time**.

    Example: Factory Method (a Creational pattern) defines how subclasses provide specific implementations.
   
2. **Object patterns** describe relationships between objects and are primarily defined by **composition**. Relationships in object patterns are typically created at **runtime** and
are **more dynamic and flexible**.

    Example: Strategy (a Behavioral pattern) enables switching algorithms at runtime by composing different strategy objects.
</details>

## Thinking in Patterns
> - **Keep It Simple, Stupid (KISS)**:
> - **Design Patterns aren’t a magic bullet; in fact they’re not even a bullet!**
> - **You know you need a pattern when...**
> - **Refactoring time is Patterns time!**
> - **Take out what you don’t really need. Don’t be afraid to remove a Design Pattern from your design.**
> - **If you don’t need it now, don’t do it now.**

<details>
    <summary>View more details</summary>
    
1. **Keep It Simple, Stupid (KISS)**:
> First of all, when you design, solve things in the simplest way possible.

Your goal should be simplicity, not "how can I apply a pattern to this problem." Don’t feel like you aren’t a sophisticated developer if you
don’t use a pattern to solve a problem. Other developers will appreciate and admire the simplicity of your design. That said, sometimes the best way to keep your design simple and flexible is to use a pattern.

2. **Design Patterns aren’t a magic bullet; in fact they’re not even a bullet!**
> Patterns aren’t a magic bullet. To use patterns, you also need to think through the consequences on the rest of your design.

Patterns, as you know, are general solutions to recurring problems. Patterns also have the benefit of being well tested by lots of developers. So, when you see a need for one, you can sleep well knowing many developers have been there before and solved the problem using similar techniques.
However, patterns aren’t a magic bullet. You can’t plug one in, compile and then take an early lunch. To use patterns, you also need to think through the consequences on the rest of your design.

3. **You know you need a pattern when...**
> Introduce a pattern when you’re sure **it addresses a problem in your design**. **If a simpler solution might work, give that consideration before you commit** to using a pattern.

> **Knowing** when a pattern applies is where your experience and knowledge come in. 

Once you’re sure a simple solution will not meet your needs, you should consider the problem along with the set of constraints under which the solution will need to operate — these will help you match your problem to a pattern. If you’ve got a good knowledge of patterns, you may know of a pattern that is a good match.

> Otherwise, survey patterns that look like they might solve the problem.

The **Intent** and **Applicability** sections of the patterns catalogs are particularly useful for this. Once you’ve found a pattern that appears to be a good match, make sure it has a set of consequences you can live with and study its effect on the rest of your design. If everything looks good, go for it!

> There is one situation in which you’ll **want to use a pattern even if a simpler solution would work**: when you **expect aspects of your system to vary**.

As we’ve seen, identifying areas of change in your design is usually a good sign that a pattern is needed. Just make sure you are adding patterns to deal with **practical change** that is likely to happen, not **hypothetical change** that may happen.

4. **Refactoring time is Patterns time!**
> Refactoring is the process of making changes to your code to improve the way it is organized. The goal is to **improve its structure, not change its behavior**.

This is a great time to reexamine your design to see if it might be better structured with patterns. For instance, code that is full of conditional statements might signal the need for the State pattern. Or, it may be time to clean up concrete dependencies with a Factory.

5. **Take out what you don’t really need. Don’t be afraid to remove a Design Pattern from your design.**
> So when do you remove a pattern? When **your system has become complex and the flexibility you planned for isn’t needed**. In other words, when **a simpler solution without the pattern would be better**.

6. **If you don’t need it now, don’t do it now.**
> If you **have a practical need to support change** in a design today, go ahead and **employ a pattern to handle that change**. However, if the **reason is only hypothetical**, **don’t add the pattern**, **it is only going to add complexity to your system, and you might never need it**!

Design Patterns are powerful, and it’s easy to see all kinds of ways they can be used in your current designs. Developers naturally love to create beautiful architectures that are ready to take on change from any direction. 

However, if you have a practical need to support change in a design today, go ahead and employ a pattern to handle that change. However, if the reason is only hypothetical, don’t add the pattern, it is only going to add complexity to your system, and you might never need it!
</details>







