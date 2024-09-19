# Compound Pattern

## Duck Simulator
<details>
  <summary>View more details</summary>

> **This was a compound pattern?** No, this was just a set of patterns working together. A compound pattern is a set of a few patterns that are combined to solve a general problem.

![Screenshot 2024-09-16 at 16 09 29](https://github.com/user-attachments/assets/36637ce4-22d1-4f6a-bb06-9449d752d58c)
</details>

## MVC
### Overview
![Screenshot 2024-09-16 at 16 41 12](https://github.com/user-attachments/assets/08b82f58-5bbb-4f9b-b4f9-801a2dad6cc6)

<details>
  <summary>View more details</summary>

1. **You’re the user — you interact with the view**.
The view is your window to the model. When you do something to the view (like click the Play button) then the view tells the controller what you did. It’s the controller’s job to handle that.

2. **The controller asks the model to change its state**.
The controller takes your actions and interprets them. If you click on a button, it’s the controller’s job to figure out what that means and how the model should be manipulated based on that action.

3. **The controller may also ask the view to change**.
When the controller receives an action from the view, it may need to tell the view to change as a result. For example, the controller could enable or disable certain buttons or menu items in the interface.

4. **The model notifies the view when its state has changed**.
When something changes in the model, based either on some action you took (like clicking a button) or some other internal change (like the next song in the playlist has started), the model notifies the view that its state has changed.

5. **The view asks the model for state**.
The view gets the state it displays directly from the model. For instance, when the model notifies the view that a new song has started playing, the view requests the song name from the model and displays it. The view might also ask the model for state as the result of the controller requesting some change in the view.

**Important Q&A:**

> **Does the controller ever become an observer of the model?**

Sure. In some designs the controller registers with the model and is notified
of changes. This can be the case when something in the model directly affects the user interface controls. For instance, certain states in the model may dictate that some interface items be enabled or disabled. If so, it is really controller’s job to ask the view to update its display accordingly.

> **Why can’t I just do that(the code manipulate "model") in the view code?** 

You could; however,  you don’t want to for two reasons: 

**First**, you’ll **complicate your view code** because it now has two responsibilities: managing the user interface and dealing with logic of how to control the model.

**Second**, you’re **tightly coupling your view to the model**. If you want to reuse the view with another model, forget it. The controller separates the logic of control from the view and decouples the view from the model. By keeping the view and controller loosely coupled, you are building a more flexible and extensible design, one that can more easily accommodate change down the road.
</details>

### Looking at MVC through patterns-colored glasses

![Screenshot 2024-09-16 at 17 14 38](https://github.com/user-attachments/assets/149d8986-41fe-42c4-afa1-27cffd5b671a)


<details>
  <summary>View more details</summary>

![Screenshot 2024-09-16 at 17 16 21](https://github.com/user-attachments/assets/2de16345-247e-4b17-95f5-223946115804)

**Important Q&A:**

> **Does the controller ever implement any application logic?**

****No, the controller implements behavior for the view. It is the smarts that translate the actions from the view to actions on the model.**
The model takes those actions and implements the application logic to decide what to do in response to those actions. The controller might have to do a little work to determine what method calls to make on the model, but that’s not considered the “application logic.” **The application logic is the code that manages and manipulates your data and it lives in your model.**

> I’ve always found the word **“model”** hard to wrap my head around. I now get that **it’s the guts of the application**, but why was such a vague, hard-to-understand word used to describe this aspect of the MVC?

**When MVC was named they needed a word that began with an “M” otherwise they couldn’t have called it MVC.**
But seriously, we agree with you, everyone scratches their head and wonders what a model is. **But then everyone realizes that they can’t think of a better word either.**
</details>



