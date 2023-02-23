In this report, I will take you through the lab tasks step by step. 

First, below is a summarized list of all the tasks involved. 

Tasks:
1. Fork the lab7 repository
2. Log into ieng6
3. Clone your fork of the repository from your Github account
4. Run the tests, demonstrating that they fail
5. Edit the code file to fix the failing test
6. Run the tests, demonstrating that they now succeed
7. Commit with a commit message, then push the resulting change to your Github account

Let's dive in to each task step by step:

Fork the lab7 repository
------------------------

For this step, you simply open the hyperlinked "lab7" from the course website, and for it with the button on the top left.

Log into ieng6
--------------

1. Type `ssh` <***space***> followed by my ieng6 login: `cs15lwi23akm@ieng6.ucsd.edu`.
2. Since I previously set up my account so that ti will no longer ask me to type in a password, it automatically connects remotely and skips the password process.

Clone your fork of the repository
---------------------------------

1. go to the cloned repository on the gitbud page.
2. clicked the green dropdown menu labeled "Code"
3. switch to the "SSH" tab, and copy the link (by clicking on the overlapping squares button on the right).
4. go back to the terminal and type `git clone` followed by <***space***> and <***ctrl***><***v***> (which pastes the url to the terminal).
5. press <***enter***>

As you can see, I have now coned the repository onto my ieng6 machine.

Running the tests
-----------------
1. `ls` to check that "lab7" now exists
2. type `cd lab7` then <***enter***>
3. `ls` again to see what files exist inside the directory
4. copy using <***ctrl***><***c***> the code to compile JUnit test from couse webpage week 3 (`javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java`).
5. paste using <***ctrl***><***v***>, then <***enter***> to compile java files inside lab7.
6. use <***ctrl***><***c***> again to copy the command to run `TestListExamples` (`java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore`).
7. <***ctrl***><***v***> to paste onto the terminal, then type `TestListExamples` and <***enter***>


Here, you can see that one test failed.

Edit the code file
------------------

1. to edit code file, type `nano L`, then <***tab***>, it would have autofilled `ListExamples.` then just type `java` and <***enter***>
2. 
