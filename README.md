# TodoMVC Performance Comparison

**Run it yourself** to see how it works on your machine or in other browsers!

![Sample of pendulum execution in Chrome, Fedora 19](sample.png)


#### Details: 
1. Add 100 items
2. Select 100 items (one by one)
3. Remove 100 items (one by one)

The reason why it's so fast, is that adding 100 items runs between two request
animation frames. Ids of items are gathered in signals as lists and 
the instant function just apply the action to all elements of the list
in the following requestAnimationFrame. So it takes only one logical instant
which is basically the execution of a list iterator.

