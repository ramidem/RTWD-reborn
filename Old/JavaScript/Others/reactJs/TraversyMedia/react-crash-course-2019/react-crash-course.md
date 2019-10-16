**Get Started**

## What is React?

React is a _JavaScript library_ created by Facebook and is used for building user interfaces (UIs) and front-end applications.

React is often called a _framework_ because of its behavior and capabilities.

React is most popular framework in the industry (for now).

---

### Why Use It?

- Makes front-end JavaScript much easier
- Uses self-contained, independent components with their own state
- Much more interactive UIs
- Virtual <span title="Document Object Model">DOM</span>
- JSX - Easily incorporate JS in markup
- Easy to work with teams

---

### Before Learning React...

- JavaScript Fundamentals (Objects, Arrays, Conditionals, etc)

**It may help to learn these first**

Pretty much everything on this list are available on [Fun Fun Function](https://github.com/ramidem/RTWD/blob/master/JavaScript/FunctionalProgramming/funfunfunction/).

- [x] [Classes]()
- [x] [Destructuring]()
- [x] [High Order Array Methods](https://www.youtube.com/playlist?list=PL0zVEGEvSaeEd9hlmCXrk5yUyqUag-n84) - `.forEach()`, `.map()`, `.filter()`, `.reduce()`
- [x] [Arrow Functions](https://www.youtube.com/watch?v=6sQDTgOqh-I)
- [ ] Fetch <span title="Application Programming Interface">API</span> & Promises

---

### React State

- Components can have state which is an object that determines how that component renders and behaves.
- We can also have _"application level"_ state by using a state manager like **Redux** or React's own **context API**

```js
state = {
  title: "title",
  body: "the content",
  isFeatured: true
};
```

---

### Create-React-App

- <span title="Command Line Interface">CLI</span> Tool for creating React applications
- Uses **Webpack** but needs no configuration
- Comes bundled with a dev server with hot reload
- **"`npm run build`"** will compile all your code to something that the browser can read

---

### Anatomy of a Component

```js
Class Post extends React.Component {
  state = {
    title: 'Post One',
    body: 'This is my first post'
  }

  render() {
    return (
      <div>
        <h3>{ this.state.title }</h3>
        <p>{ this.state.body }</p>
      </div>
    )
  }
}
```
