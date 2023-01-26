Lab Report 2
============

Part 1
------

Below is a screenshot of my `StringServer` class.

![stringservercode]()

Here are some screenshots of me launching the web server and using the path `/add-message` to display messages on the server.

![compile&run]()
![nopath]()

The sequence of the two screen shots of above shows me compiling and running `StringServer`. As you can see, I have not provided it with a path, so the corresponding message is displayed.

Now I will give it a path:

![today]()

Above, by providing a path, the `else if` condition is checked in `handleRequest`. It compares the path given with `/add-message`. In this example the result from the comparison would be true, entering the `else if` block.

In the `else if` block, it will first create a new array object and store the query (`s=Today`) in the array, splitting it into two elements by `=`. So element 0 is `s` and element 1 is `Today`.

After that, it checks that element 0 is `s`, which is also true here, so the input after `=` in the query (now stored as element 1 in the array) is then stored into an ArrayList that ultimately gets printed by the method.

![fullmessage]()

In the screenshot above, you can see several lines of messages. Each time you type in a path, the input in the query sfter `s=` is stored as a new element in the ArrayList through the same process as described for the first message ("Today"). Then they are each printed in a seperate line and displayed on the web server.

Part 2
------


