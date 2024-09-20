# Design Principles:
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
> **A Pattern** is a solution to a problem in a context.

- The **context** is the situation in which the pattern applies. This should be a recurring situation. E.g. You have a collection of objects.
- The **problem** refers to the goal you are trying to achieve in this context, but it also refers to any constraints that occur in the context. E.g. You need to step through the objects without exposing the collection’s implementation.
- The **solution** is what you’re after: a general design that anyone can apply which resolves the goal and set of constraints. E.g. Encapsulate the iteration into a separate class.

_**If you find yourself in a context with a problem that has a goal that is affected by a set of constraints, then you can apply
a design that resolves the goal and constraints and leads to a solution.**_

In design patterns, "forces" refer to the various constraints, requirements, and trade-offs that affect the design decision. These forces shape how a pattern is applied and help explain why a particular pattern is appropriate for solving a specific problem. They typically include aspects such as:

System Requirements: What the software needs to achieve, including functionality and performance expectations.
Trade-offs: The compromises between different design options, such as simplicity vs. flexibility, or memory usage vs. processing speed.
Context: The specific environment or circumstances under which the pattern is being applied.
Limitations: Any technical or organizational constraints, like programming language features, time, or team experience.
Non-functional Requirements: Performance, scalability, security, and maintainability needs that influence the design.
In short, "forces" are the factors that drive the need for a particular pattern and guide its application in solving a problem effectively.




