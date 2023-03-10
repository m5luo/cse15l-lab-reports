Lab Report 3: Researching Commands - `grep`
===========================================

We will look at 4 different options that can be used with the `grep` command: `-i`, `-l`, `-c`, and `-v`. There will also be some instances when nultiple options are used in one command, the order in which they appear does not effect the output.

First, for context, the `grep` command is used in the following format:

`grep "PATTERN" *FILENAME*`

On its own, it returns all the lines in a file that contains the specified pattern.

Now let's look at what happens when you follow `grep` with other options.


`-i`
----

`-i` ignores case of input pattern. 

Example 1:

```
$ grep -i "bob and sharon" */*/*/Berk/ch1.txt
•Bob and Sharon, parents of a 4-year-old: Our daughter, Lydia, could recite her ABCs and count from 1 to 20 by age 2 1/2. When we looked for a preschool, many programs appeared to do little more than let children play, so we chose one with lots of emphasis on academics. To me, Lydia’s preschool seems like great preparation for kindergarten and ﬁrst grade, but each morning, Lydia hates to go. Why is Lydia, who’s always been an upbeat, curious child, so unhappy?
```

Here, since `-i` ignore the case of input pattern, even though I typed in the names in lower-case, it still recognized "Bob and Sharon" as matching pattern.

Example 2: 

```
$ grep -i "NOAH AND SUZANNE" */*/*/Berk/ch1.txt
•Noah and Suzanne, parents of a 2-year-old: When our parents were raising us, they seemed conﬁdent of their power and inﬂuence. Recently we read that how children turn out is mostly written in their genes; there’s little we as parents can do about it. Does parenting really matter?
Downplaying the role of parents—suggesting that they are relatively unimportant in socialization—does both families and society a disservice. It leads parents, like Noah and Suzanne, who are on the cusp of a dramatic period of development in their 2-year-old son’s life, to express grave doubts about their own importance. Harvard University psychologist Howard Gardner notes:
```

Similar the previous example, case is ignored, so even though the pattern is given in all caps, "Noah and Suzanne" is still recognized as matching pattern. 


`-l`
----

Instead of the normal output (lines that contains the pattern), `-l` will print only the file name of the file that contains the pattern. In the background, each file is scanned and scanning stops as soon as first match is found.

Exmaple 1:

```
$ grep -l "Bahamas" */*/*/*.txt
written_2/travel_guides/berlitz1/WhatToFWI.txt
written_2/travel_guides/berlitz2/Bahamas-History.txt
written_2/travel_guides/berlitz2/Bahamas-Intro.txt
written_2/travel_guides/berlitz2/Bahamas-WhatToDo.txt
written_2/travel_guides/berlitz2/Bahamas-WhereToGo.txt
written_2/travel_guides/berlitz2/Canada-WhereToGo.txt
```

Here, I gave it the pattern "Bahamas" and used `*` so that it scans all text files in the third layer of directory under `skills-demo1-data`. With this command, it returned only the file names of all files that contained the pattern and not each line.

Example 2:

```
$ grep -i -l "bahamas" */*/*/*.txt
written_2/travel_guides/berlitz1/WhatToFWI.txt
written_2/travel_guides/berlitz2/Bahamas-History.txt
written_2/travel_guides/berlitz2/Bahamas-Intro.txt
written_2/travel_guides/berlitz2/Bahamas-WhatToDo.txt
written_2/travel_guides/berlitz2/Bahamas-WhereToGo.txt
written_2/travel_guides/berlitz2/Canada-WhereToGo.txt
```

Here is an example of using `-i` and `-l` together. By using `-i`, even though I typed "bahamas" without capitalizing the first letter, it still recognized "Bahamas" in each file and outputted them as files with matching pattern.

Example 3:

```
$ grep -l "Beij" */*/*/*.txt
written_2/travel_guides/berlitz1/HistoryHongKong.txt
written_2/travel_guides/berlitz1/HistoryMalaysia.txt
written_2/travel_guides/berlitz1/IntroHongKong.txt
written_2/travel_guides/berlitz1/WhatToHongKong.txt
written_2/travel_guides/berlitz2/Beijing-History.txt
written_2/travel_guides/berlitz2/Beijing-WhatToDo.txt
written_2/travel_guides/berlitz2/Beijing-WhereToGo.txt
written_2/travel_guides/berlitz2/China-History.txt
written_2/travel_guides/berlitz2/China-WhatToDo.txt
written_2/travel_guides/berlitz2/China-WhereToGo.txt
written_2/travel_guides/berlitz2/Cuba-WhereToGo.txt
```

Here is just another example of using `-l`. It displayed file names of all the files that contains the pattern instead of each line. You can see the pattern does not have to be a complete word (that would be followed by a space) but can also be part of a word.


`-c`
----

Instead of standard output, `-c` will output a count: the number of times the pattern exists in a file. If more than one file is scanned, it outputs the file name followed by a count for the number of times the pattern appears in the file.

Example 1:

```
$ grep -c "who" */*/*/Kauffman/*.txt
written_2/non-fiction/OUP/Kauffman/ch1.txt:4
written_2/non-fiction/OUP/Kauffman/ch10.txt:9
written_2/non-fiction/OUP/Kauffman/ch3.txt:13
written_2/non-fiction/OUP/Kauffman/ch4.txt:14
written_2/non-fiction/OUP/Kauffman/ch5.txt:5
written_2/non-fiction/OUP/Kauffman/ch6.txt:12
written_2/non-fiction/OUP/Kauffman/ch7.txt:16
written_2/non-fiction/OUP/Kauffman/ch8.txt:6
written_2/non-fiction/OUP/Kauffman/ch9.txt:11
```

Above, I used `-c` on `Kauffeman/*.txt` so it outputted all the files that match the pattern for file path followed by the count for the pattern "who" in each file. 

Example 2:

```
$ grep -c "who" */*/*/Kauffman/ch1.txt
4
```

Here, I specified the text file `ch1.txt` so now it only print a number that represents the count for the pattern, without repeating the file name.

Example 3:

```
$ grep -c "damon" */*/*/Berk/ch1.txt
0
```

```
$ grep -i -c "damon" */*/*/Berk/ch1.txt
5
```

Here I used `-c` alone and then with `-i` on the pattern "damon". From the result of the first `grep` we can see that the pattern "damon" doesn't actually exist in the text file (count returned is `0`). But if we add `-i,` although "Damon" is a name and shows up in the text files with a capitalized "D", "damon" is now also recognized as a match, and we can see that the name appears 5 times in the text. 


`-v`
----

`-v` looks for lines that do ***not*** contain the pattern instead. Outputs lines without pattern. 

Example 1:

```
$ grep -v "the" */*/*/Bahamas-History.txt




A Brief History
Colonization and Piracy
The American Revolutionary War
Emancipation and Decline
Civil War Blockade Running
The 20th Century




```

Here you can see there is a large space before the system outputs all the lines that does not contain "the". Actually the empty space are also representative of lines without "the". They are literally the empty lines that are used to distinguish between paragraphs. Let's use `-v -c` to confirm:

```
$ grep -v -c "the" */*/*/Bahamas-History.txt
13
```

As expected, the output indicates there are 13 distinct lines without "the" in the text file. But we can only see 5 lines above with text, which means there are 8 empty lines that also do not contain "the" that were printed.

Example 2:

```
$ grep -v -i "the" */*/*/Bahamas-History.txt




A Brief History
Colonization and Piracy
Emancipation and Decline
Civil War Blockade Running




```

As we are expecting, by using `-i -v`, the last line which contains "The" is now also considered a match pattern (as we ignore the case). Therefore it is no longer an output of the new command as `-v` outputs all lines *not* containing the pattern.


Source/Reference: [grep_manual](https://man7.org/linux/man-pages/man1/grep.1.html)
