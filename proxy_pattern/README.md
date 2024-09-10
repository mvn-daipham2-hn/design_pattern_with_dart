# Proxy Pattern
> The Proxy Pattern provides a surrogate or placeholder for another object to control access to it.

## Problem-solving:
Use the Proxy Pattern to create a representative object that controls access to another object, which may be remote, expensive to create or in need of securing.

## UML diagram:
![Screenshot 2024-09-10 at 16 09 31](https://github.com/user-attachments/assets/eede1b84-f968-46b0-b072-bc8249ebece1)

1. First we have a Subject, which provides an interface for the RealSubject and the Proxy. By implementing the same interface, the Proxy can be substituted for the RealSubject anywhere it occurs.

2. The RealSubject is the object that does the real work. It’s the object that the Proxy represents and controls access to.

3. The Proxy holds a reference to the RealSubject. In some cases, the Proxy may be responsible for creating and destroying the RealSubject. Clients interact with the RealSubject through the Proxy. Because the Proxy and RealSubject implement the same interface (Subject), the Proxy can be substituted anywhere the subject can be used. The Proxy also controls access to the RealSubject; this control may be needed if the Subject is running on a remote machine, if the Subject is expensive to create in some way or if access to the subject needs to be protected in some way.
## Design Principles:

## Noted Points:
A few ways proxies control access:
  - A remote proxy controls access to a remote object.
  - A virtual proxy controls access to a resource that is expensive to create.
  - A protection proxy controls access to a resource based on access rights.

### Remote Proxy
- The proxy object resides on the client's side and has the same interface as the remote object.
- When a client invokes a method on the proxy, the proxy handles the request by sending it over the network to the remote object.
- The remote object performs the operation and returns the result to the proxy, which passes it back to the client.

### Virtual Proxy

