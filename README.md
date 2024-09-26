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
> **WARNING**: Overuse of design patterns can lead to code that is downright over-engineered. Always go with the simplest solution that does the job and introduce patterns where the need emerges.

When a design solution calls for a pattern, you get the benefits of using a solution that has been time **tested by lots of developers**. You’re also using a solution that is **well documented and that other developers are going to recognize** (you know, that whole shared vocabulary thing).

However, when you use Design Patterns, there can also be a downside. Design Patterns often **introduce additional classes and objects**, and so they can **increase the complexity of your designs**. Design Patterns can also **add more layers to your design**, which adds **not only complexity, but also inefficiency**.

Also, using a Design Pattern can sometimes be outright overkill. **Many times you can fall back on your design principles and find a much simpler solution to solve the same problem. If that happens, don’t fight it. Use the simpler solution.**

Don’t let us discourage you, though. **When a Design Pattern is the right tool for the job, the advantages are many.**

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

- **System Requirements**: What the software needs to achieve, including functionality and performance expectations.
  
- **Trade-offs**: The compromises between different design options, such as simplicity vs. flexibility, or memory usage vs. processing speed.

- **Context**: The specific environment or circumstances under which the pattern is being applied.

- **Limitations**: Any technical or organizational constraints, like programming language features, time, or team experience.

- **Non-functional Requirements**: Performance, scalability, security, and maintainability needs that influence the design.
  
In short, "**forces**" are the factors that drive the need for a particular pattern and guide its application in solving a problem effectively.
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

## Level of using design patterns:
> **Beginner**: The Beginner uses patterns everywhere.
<details>
    <summary>View more details</summary>
This is good: the beginner gets lots of experience with and practice using patterns. The beginner also thinks, “The more patterns I use, the better the design.” The beginner will learn this is not so, that all designs should be as simple as possible. Complexity and patterns should only be used where they are needed for practical extensibility.
</details>

> **Intermediate**: As learning progresses, the Intermediate mind starts to see where patterns are needed and where they aren’t.
<details>
    <summary>View more details</summary>
The intermediate mind still tries to fit too many square patterns into round holes, but also begins to see that patterns can be adapted to fit situations where the canonical pattern doesn’t fit.
</details>

> **Master**: Able to see patterns where they fit naturally.
<details>
    <summary>View more details</summary>
    
Not obsessed with using patterns; rather it looks for simple solutions that best solve the problem. Master thinks in terms of the object principles and their trade-offs. When a need for a pattern naturally arises, the master applies it knowing well that it may require adaptation. The master also sees relationships to similar patterns and understands the subtleties of differences in the intent of related patterns. _**The master is also a Beginner mind**_ — it doesn’t let all that pattern knowledge overly influence design decisions.
</details>

## Anti-Patterns
> An **Anti-Pattern** refers to a solution to a recurring problem that initially seems like a good idea but ends up being ineffective, harmful, or counterproductive in the long run. Anti-patterns often arise due to misunderstandings, poor design decisions, or short-term thinking and can lead to inefficient or unmaintainable code. Avoiding anti-patterns usually involves recognizing the symptoms early and adopting better design practices.

<details>
    <summary>View more details</summary>
    
1. **An anti-pattern tells you why a bad solution is attractive**. Let’s face it, no one would choose a bad solution if there wasn’t something about it that seemed attractive up front. One of the biggest jobs of the anti-pattern is to alert you to the seductive aspect of the solution.

2. **An anti-pattern tells you why that solution in the long term is bad**. In order to understand why it’s an anti-pattern, you’ve got to understand how it’s going to have a negative effect down the road. The anti-pattern describes where you’ll get into trouble using the solution.

3. **An anti-pattern suggests other patterns that are applicable which may provide good solutions**. To be truly helpful an anti-pattern needs to point you in the right direction; it should suggest other possibilities that may lead to good solutions.

### Common Anti-Patterns

| Anti-Pattern               | Description                                                                                               | Solution                                                                                           |
|----------------------------|-----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| **God Object**              | One class or module does too much, handling unrelated concerns, leading to high coupling and low cohesion. | Break the object into smaller, more cohesive classes, following the Single Responsibility Principle (SRP). |
| **Big Ball of Mud**         | A system with no clear structure or architecture, becoming hard to maintain.                              | Refactor the code gradually, introducing modular design, and establishing clear boundaries between components. |
| **Spaghetti Code**          | Code with little structure, making it difficult to read, maintain, or debug due to tangled dependencies.   | Refactor the code using proper design patterns, modularize, and follow clean coding practices.      |
| **Golden Hammer**           | Over-reliance on a familiar tool or pattern for all problems, even when it's not the best fit.             | Choose the right tool or pattern for the specific problem after careful evaluation.                 |
| **Premature Optimization**  | Focusing on optimization early, before it's necessary, adding complexity and reducing readability.         | Optimize only after identifying performance bottlenecks, and focus on readability first.            |
| **Copy-Paste Programming**  | Duplicating code instead of reusing or modularizing it, leading to maintenance issues across many places.  | Use DRY (Don't Repeat Yourself) principles, and refactor common logic into reusable functions or modules. |
| **Boat Anchor**             | Keeping unused code or features that add unnecessary complexity.                                           | Regularly clean up and remove unused code and dependencies, following YAGNI (You Ain't Gonna Need It). |
| **Dead Code**               | Code that is no longer used but still exists, cluttering the codebase.                                    | Regularly review and remove unused or unreachable code, using tools for static code analysis.       |
| **Lava Flow**               | Retaining outdated code that's hard to remove due to lack of understanding.                               | Document legacy code clearly and refactor/remove parts that are no longer necessary.                |
| **Shotgun Surgery**         | A change in one area requires scattered changes across the codebase.                                      | Improve code cohesion by grouping related functionality and minimizing inter-module dependencies.   |
| **Magic Numbers**           | Using unexplained literals (e.g., `5`, `10`) instead of constants, making code unclear and hard to modify. | Replace literals with well-named constants or enums to improve readability and maintainability.     |
| **Reinventing the Wheel**   | Creating custom solutions for problems that have existing, tested libraries or frameworks.                | Use well-tested libraries or frameworks, and contribute improvements to them instead of building from scratch. |
| **Poltergeist**             | Objects that exist only to pass information, adding unnecessary complexity.                               | Refactor or eliminate unnecessary objects by simplifying the design and reducing indirection.       |
| **Object Cesspool**         | Objects are tightly coupled, making it hard to test or modify them independently.                         | Increase decoupling by following design principles like Dependency Injection (DI) or the Law of Demeter. |
| **Yo-Yo Problem**           | Excessive inheritance or delegation requires navigating many files to understand the logic.               | Flatten inheritance hierarchies, favor composition over inheritance, and reduce over-delegation.    |
| **Cargo Cult Programming**  | Copying code or practices without understanding, leading to ineffective or incorrect usage.               | Understand the logic behind code before using it; consult documentation or experts if necessary.    |

#### Differences between God Object vs Big Ball of Mud
> In short, the **God Object** is a symptom of poor object design on a class level, while the **Big Ball of Mud** is a more systemic problem, indicating poor architecture and organization throughout the entire application.

**Scope**: The God Object refers to a single class or object doing too much, whereas the Big Ball of Mud describes the entire system being poorly structured.

**Focus**:
- The God Object is about improper responsibility assignment within a class.
- The Big Ball of Mud is about the overall architecture of the system being messy and lacking organization.

#### Differences between Boat Anchor vs Dead Code 
> In summary, **Boat Anchor** involves unused but integrated components kept around just in case, whereas **Dead Code** refers to sections of code that are obsolete and no longer play an active role.

**Source of Unused Code**:
- Boat Anchor is intentionally kept around in case it becomes useful later, but never actually used.
- Dead Code was once used or planned to be used but became redundant or unreachable after changes in the codebase.

**Type of Component**:
- Boat Anchor can be a larger construct, like libraries, configurations, or features.
- Dead Code usually refers to sections of code (methods, functions, or blocks) that are still part of the project but no longer executed.
</details>

## How to use the book "Design Patterns: Elements of Reusable Object-Oriented"?
<details>
    <summary>View more details</summary>

Joe: So Jim, how are you actually using the catalog? When you have a problem, do you go fishing in the catalog for a solution?

Jim: I try to **get familiar with all the patterns and their relationships first**. Then, when I need a pattern, I have some idea of what it is. I go back and look at the **Motivation** and **Applicability** sections to make sure I’ve got it right. There is also another really important section: **Consequences**. I review that to make sure there won’t be some unintended effect on my design.

Frank: That makes sense. So once you know the pattern is right, how do you approach working it into your design and implementing it?

Jim: That’s where the class diagram comes in. I first read over the **Structure** section to review the diagram and then over the **Participants** section to make sure I understand each classes’ role. From there I work it into my design, making any alterations I need to make it fit. Then I review the **Implementation** and **Sample Code** sections to make sure I know about any good implementation techniques or gotchas I might encounter.
</details>








