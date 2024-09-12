# Proxy Pattern
> The Proxy Pattern provides a surrogate or placeholder for another object to control access to it.

## Problem-solving:
Use the Proxy Pattern to create a representative object that controls access to another object, which may be remote, expensive to create, or in need of securing.

## UML diagram:
![Screenshot 2024-09-10 at 16 09 31](https://github.com/user-attachments/assets/eede1b84-f968-46b0-b072-bc8249ebece1)

<details>
  <summary>View more details</summary>
  
1. First we have a Subject, which provides an interface for the RealSubject and the Proxy. By implementing the same interface, the Proxy can be substituted for the RealSubject anywhere it occurs.

2. The RealSubject is the object that does the real work. It’s the object that the Proxy represents and controls access to.

3. The Proxy holds a reference to the RealSubject. In some cases, the Proxy may be responsible for creating and destroying the RealSubject. Clients interact with the RealSubject through the Proxy. Because the Proxy and RealSubject implement the same interface (Subject), the Proxy can be substituted anywhere the subject can be used. The Proxy also controls access to the RealSubject; this control may be needed if the Subject is running on a remote machine, if the Subject is expensive to create in some way, or if access to the subject needs to be protected in some way.
</details>

## Variants of the Proxy Pattern:
| Proxy Type | Purpose | Use Case | Example |
|---|---|---|---|
| **Remote Proxy**          | Provides a local representation of an object in a different space | Interacting with remote objects over a network                      | A proxy that communicates with a remote server                          |
| **Virtual Proxy**         | Delays the creation/loading of expensive objects                  | Avoids loading resource-intensive objects until needed               | Image placeholder that loads the full image on demand                   |
| **Protection Proxy**      | Controls access based on permissions                              | Restricts access to sensitive objects                               | A proxy that checks if a user has permission to access certain methods  |
| **Cache Proxy**           | Caches results of expensive operations                            | Reduces repeated processing or network traffic                      | Caches database queries or computational results                        |
| **Smart Reference Proxy** | Adds extra behavior when accessing an object                      | Manages resources, logs access, or reference counting               | A proxy that logs object access or manages memory cleanup               |
| **Synchronization Proxy** | Manages concurrent access to an object                            | Ensures thread-safe interactions with shared objects                | A proxy that synchronizes method calls in a multi-threaded environment  |
| **Firewall Proxy**        | Filters requests before reaching the object                       | Adds security layers or restricts network traffic                   | A proxy that filters requests to a server based on security rules       |
| **Copy-On-Write Proxy**   | Defers copying of objects until write operations are performed    | Saves memory by avoiding unnecessary object copies                  | A proxy that creates a copy of an object only when it is modified       |
| **Facade Proxy(Complexity Hiding Proxy)**   | Simplifies the interface to a complex subsystem or object, hiding intricate details from the client.    | When you want to hide complex logic, data manipulation, or subsystem interactions from the user and expose a simpler, more user-friendly interface                  | A proxy that simplifies multiple steps in a file I/O process (open, read, close) by providing a single method for the user to interact with, such as `readFile()`       |

### Remote Proxy
> With Remote Proxy, the proxy acts as a local representative for an object that lives in a remote place. A method call on the proxy results in the call being transferred over the wire invoked remotely, and the result being returned to the proxy and then to the Client.
<details>
  <summary>View more details</summary>
  
- The proxy object resides on the client's side and has the same interface as the remote object.
- When a client invokes a method on the proxy, the proxy handles the request by sending it over the network to the remote object.
- The remote object performs the operation and returns the result to the proxy, which passes it back to the client.
![Screenshot 2024-09-11 at 14 27 27](https://github.com/user-attachments/assets/78d840fb-d584-4195-8233-9192b1ef1585)
</details>

### Virtual Proxy
> Virtual Proxy acts as a representative for an object that may be expensive to create. The Virtual Proxy often defers the creation of the object until it is needed; the Virtual Proxy also acts as a surrogate for the object before and while it is being created. After that, the proxy delegates requests directly to the RealSubject.
<details>
  <summary>View more details</summary>

1. Sometimes Proxy and Decorator look very similar, but their purposes are different: a decorator adds behavior to a class, while a proxy controls access to it. 

2. How do I make clients use the Proxy rather than the Real Subject? One common technique is to provide a factory that instantiates and returns the subject. Because this happens in a factory method we can then wrap the subject with a proxy before returning it. The client never knows or cares that it’s using a proxy instead of the real thing.

![Screenshot 2024-09-11 at 14 27 54](https://github.com/user-attachments/assets/fde739b2-e29c-4241-bf55-77835bcf2768)

#### Virtual Proxy vs Decorator
> Even though they both wrap an object, their purposes are different: Virtual Proxy is about managing object creation, while Decorator is about enhancing object behavior.
- Virtual Proxy controls access to an object by delaying its instantiation or managing resource-intensive processes.
- Decorator dynamically adds new functionality to an object without changing its interface, often stacking multiple decorators.
</details>

### Facade Proxy(Complexity Hiding Proxy)
> The Complexity Hiding Proxy differs from the Facade Pattern in that the proxy controls access, while the Facade Pattern just provides an alternative interface.


