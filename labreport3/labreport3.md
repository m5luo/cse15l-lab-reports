Lab Report 3: Researching Commands - `grep`
===========================================

We will look at 4 different options that can be used with the `grep` command: `-l`, `-f`, `-v`, and `-c`.

First, for context, the `grep` command is used as such:

`grep "PATTERN" *FILENAME*`

On its own, it returns all the lines that contains the specified pattern.

Now let's look at what happens when you follow `grep` with other options.

`-i`
----

`-i` ignores case of input pattern. 

![grep-i1]()

Here, I typed in the names in lower-case, but it still recognized "Bob and Sharon" as matching pattern.

![grep-i2]()

Here, I typed in the names in all caps, but it still recognized "Noah and Suzanne" as matching pattern. 


`-l`
----

Instead of the normal output (lines that contains the pattern), `-l` will print only the file name of the file that contains the pattern. In the background, each file is scanned and scanning stops as soon as first match is found.

Examples 1:

![grep-l-1]()

Here, I gave it the pattern "Bahamas" and it returend only the file names of all files that contained the pattern and not each line.

![grep-l-i]()

Here is an example of using `-i` and `-l` together. By using `-i`, even though I typed "bahamas" wihtout capitalizing teh first letter, it still recognized "Bahamas" in each file and outputted them as files with matching pattern.


`-o`
----

Instead of standard output, `-o` will output only the pattern, each time there is a match in the file.

![grep-o-i]()

Here is an example of using `-o` and `-i` and the same time. This means the case of the pattern input is ignored, which is reflected in the output, it considered both "history" and "History" as matching patterns. And there is a total of three matches in the file, one with "H" capitalized, two with no capitalization.


`-c`
----

Instead of standard output, `-c` will output the name of each file containing the specified pattern, followed by the number of times the pattern appeared in the file.
