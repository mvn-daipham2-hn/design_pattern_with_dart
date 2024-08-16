# Simple Factory
> The Simple Factory isn’t actually a Design Pattern; it’s more of a programming idiom(but it is commonly used). Some developers do mistake this idiom for the "Factory Pattern".
<details>
  <summary>View more details</summary>
  
## Problem-solving: 
The Simple Factory pattern aims to encapsulate the object creation process. It provides a single method to create objects, often based on some input or condition.
## UML diagram: 
> As you can see in this diagram, we will separate the creation process `createPizza()` from `PizzaStore` into another class `SimplePizaFactory`.
![Screenshot 2024-08-14 at 17 03 55](https://github.com/user-attachments/assets/cfdd3a85-f43b-40ea-94e0-8bf59d367b8a)
</details>

# Factory Method
> The Factory Method Pattern defines an interface for creating an object but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.
<details>
  <summary>View more details</summary>
  
## Problem-solving: 
The Factory Method pattern is designed to allow subclasses to alter the type of objects that will be created. It lets the client classes defer instantiation to subclasses.
## UML diagram: 
![Screenshot 2024-08-14 at 16 44 46](https://github.com/user-attachments/assets/65e5d4fc-63f3-41c3-af1d-c981e71d9ad7)

> Apply to Pizza Store
![Screenshot 2024-08-16 at 11 42 45](https://github.com/user-attachments/assets/81e235ec-e45c-4caf-b6dd-dec4db8171a8)
## Noted Points:
1. In design patterns, the phrase “implement an interface” does NOT always mean “write a class implements an interface,
by using the “implements” keyword in the class declaration.” In the general use of the phrase, a concrete class implementing a method from a supertype (which could be a class OR interface) is still considered to be “implementing the interface” of that supertype.
</details>

# Abstract Factory
> The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.
<details>
  <summary>View more details</summary>
  
## Problem-solving: 
An Abstract Factory gives us an interface(`AbstractFactory`) for creating a family of products(`AbstractProductA`, `AbstractProductB`...). By writing code that uses this interface, we decouple our code from the actual factory(`ConcreteFactory1`, `ConcreteFactory2`...) that creates the products.

That allows us to implement a variety of factories that produce products meant for different contexts – such as different regions, different operating systems, or different looks and feels.

## UML diagram: 
![Screenshot 2024-08-16 at 10 53 10](https://github.com/user-attachments/assets/3d959bae-9f48-4c50-b530-3f45e04461f2)

> Apply to Pizza Store
![Screenshot 2024-08-16 at 11 39 59](https://github.com/user-attachments/assets/25796fc9-1e5b-4b57-91ca-d037d3b4f769)
</details>

# Design Principles:
> The Dependency Inversion: Depend upon abstractions. Do not depend upon concrete classes.
1. High-level modules should not depend on low-level modules. Both should depend on abstractions (e.g., interfaces).
2. Abstractions should not depend on details. Details should depend on abstractions.
<details>
  <summary>The following guidelines can help you avoid OO designs that violate the Dependency Inversion Principle</summary>

**_Like many of our principles, this is a guideline you should strive for, rather than a rule you should follow all the time._**

**_If you have a class that isn’t likely to change, you can instantiate a concrete class in your code. Think about it; we instantiate String objects all the time without thinking twice. Does that violate the principle? Yes. Is that okay? Yes. Why? Because String is very unlikely to change._**

**_On the other hand, a class you write is likely to change, and you have some good techniques like the Factory Method to encapsulate that change._**

- No variable should hold a reference to a concrete class(If you use new, you’ll be holding a reference to a concrete class. Use a factory to get around that!).
- No class should derive from a concrete class(If you derive from a concrete class, you’re depending on a concrete class. Derive from an abstraction, like an interface or an abstract class.).
- No method should override an implemented method of any of its base classes(If you override an implemented method, then your base class wasn't really an abstraction to start with. Those methods implemented in the base class are meant to be shared by all your subclasses).
</details>

# Simple Factory vs Factory Method(from ChatGPT)
- **Control over Object Creation**: In Simple Factory, object creation is centralized and not designed for extension. In Factory Method, object creation is deferred to subclasses, which gives more flexibility and follows object-oriented principles better.
- **Usage**: Use Simple Factory for straightforward cases where you don't expect the code to change often. Use the Factory Method when you expect to add new types in the future, and you want to adhere to OOP principles like inheritance and polymorphism.
<details>
  <summary>View more details</summary>
  
  | Criterial | Simple Factory | Factory Method |
  |:---:|---|---|
  | **Intent** | Aim to encapsulate the object creation process. It provides a single method to create objects, often based on some input or condition| Design to subclasses to alter to type of objects that will be created. It lets the client classes defer instantiation to subclasses|
  | **Structure** | Typically a static method that decides which class to instantiate. It is not considered a "true" design pattern by some, as it doesn't fully leverage object-oriented principles like inheritance or polymorphism.| Involve a superclass with an abstract method for creating objects. Subclasses override this method to create instances of specific classes.|
  | **Example** | If you have a `ShapeFactory` class with a static method `createShape(type)`, this method might return a `Circle`, `Square`, or `Rectangle` object based on the `type` parameter.| You might have an abstract `Document` class with a method `createPage()`. Concrete subclasses like `Resume` or `Report` will implement `createPage()` to return specific types of pages.|
  | **Flexibility** | It's less flexible because adding new types requires modifying the factory method, which can violate the Open/Closed Principle| It's more flexible because the object creation is deferred to subclasses. The superclass doesn't need to know about specific classes being instantiated, adhering better to the Open/Closed Principle |
</details>

# Strategy Pattern vs Factory Pattern(from ChatGPT)
While the **Strategy Pattern** can indeed encapsulate the creation of objects, it is not its primary purpose. So, if you want to encapsulate **how** something is done (like which algorithm to use), use the **Strategy Pattern**. If you want to encapsulate **what** is created (like which object to instantiate), use the **Factory Pattern**.
<details>
  <summary>View more details</summary>

## Strategy Pattern:
- Encapsulates Behaviors: The Strategy Pattern is focused on defining and selecting different algorithms or behaviors at runtime. It lets you swap these behaviors without altering the code that uses them.
- Not Primarily About Object Creation: While a Strategy could involve creating objects, its primary purpose is to encapsulate and choose between different ways of doing something, like sorting, payment processing, or data compression.
## Factory Pattern:
- Encapsulates Object Creation: The Factory Pattern is specifically designed to manage the creation of objects. It abstracts away the details of which specific class to instantiate, allowing the client to work with a more general interface or class.
- Not About Behavior: The Factory Pattern’s focus is on how objects are created, not how they behave once created. It’s all about encapsulating the instantiation logic.
## Key Difference:
- Strategy Pattern: Encapsulates interchangeable behaviors (strategies).
- Factory Pattern: Encapsulates the creation process of objects (factories).
## Example Analogy:
- Strategy Pattern: Like a toolbox where you can pick different tools (behaviors) based on the task at hand.
- Factory Pattern: Like a machine that produces different types of parts (objects) depending on the settings (input conditions).
</details>

