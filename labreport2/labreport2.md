Lab Report 2
============

Part 1
------

Below is a screenshot of my `StringServer` class.

![stringservercode]()

Here are some screenshots of me launching the web server and using the path `/add-message` to display messages on the server.

![compile&run]()
![nopath]()

The sequence of the two screen shots of above shows me compiling and running `StringServer`. As you can see, I have not provided it a path, so the corresponding message is displayed.

No I will give it a path:

![today]()

Above, by providing a path, the `else if` condition is checked in the `handleRequest` method. It compares the path given with `/add-message`. In this example the result from the comparison would be true, entering the `else if` block.
In the `else if` block, it will first create a new array object and store the query (in this case `s=Today`) in the array, spliting it into two element by `=`. So element 0 is `s` and element 1 is `Today`.
After, it checks that element 0 is `s`, which also return true. So the input after `=` in the query (now stored as element 1 in the array) is then stored into an ArrayList that ultimately gets printed by the method.

![fullmessage]()
