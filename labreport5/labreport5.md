Lab Report 5: Grading Script
============================

Here is the link to my grading bash script: [grader](grade1.sh).

A little summary of the code:  
The bash script takes in a directory that contains a java file called `ListExamples.java`.   
It checks the following before running a tester: 
 - the file with the right name is found,
 - it compiles successfully,
 - has a matching method signature (so the tester will be able to call the method).  
If any of the process above fails, a massage indicating which process failed will be printed, followed by possible error messages from the java compiler, then the bash script is exited immediately. If all the previous steps proceed succesfully, the tester will run to see if the code passes the tests. Then a score will be printed: (number of successful test)/(total test) or 100% if all tests pass.

I tested this grading script on all the examples java files given on the course website. Below are detailed outputs of the script when each java file is given as input.

File 1: File from Lab 3
-----------------------
Expected behavior:
- File: Found.
- Compile: Successful.
- Method Signature: Match.
- Test: Fail as the third `while` loop in the code is supposed to iterate through list 2 but updates the index of list 1.

Screenshot of the actual test run:
![lab3](lab3_.png)

File 2: Corrected File
----------------------
Expected behavior:
- File: Found.
- Compile: Successful.
- Method Signature: Match.
- Test: Pass since the issue that failed the first file is fixed.

Screenshot of the actual test run:
![corrected](corrected.png)

File 3: File with Compile Error
-------------------------------
Expected behavior:
- File: Found.
- Compile: Failed due to syntax error: missing semi-colon on line 15.
- Method Signature: Not applicatble as bash script exists as soon as compilation fails.
- Test: Not applicatble as bash script exists as soon as compilation fails.

Screenshot of the actual test run:
![compile-error](compile-error.png)

File 4: Different Method Signature
----------------------------------
Expected behavior:
- File: Found
- Compile: Successful
- Method Signature: Does not match the expected method signature as the parameters were switched.
- Test: Not applicable as bash script exists as soon as method signature did not match.

Screenshot of the actual test run:
![signature](signature.png)

File 5: Different Filename
--------------------------
Expected behavior:
- File: Not found as filename does not match expected.
- Compile: Not applicable as bas script exists as soon as file is not found.
- Method Signature: Not applicable as bas script exists as soon as file is not found.
- Test: Not applicable as bas script exists as soon as file is not found.

Screenshot of the actual test run:
![filename](filename.png)

File 6: File Nested Inside Another Directory
--------------------------------------------
Expected behavior:
- File: Not found as file is nested inside another directory.
- Compile: Not applicable as bas script exists as soon as file is not found.
- Method Signature: Not applicable as bas script exists as soon as file is not found.
- Test: Not applicable as bas script exists as soon as file is not found.

Screenshot of the actual test run:
![nested](nested.png)

File 7: Subtle Mistakes in Code
-------------------------------
Expected behavior:
- File: Found.
- Compile: Successful.
- Method Signature: Match.
- Test: Failed as this code avoids dulicates (while we allow for dupicate in our expected results). When the two arrays have the same element at the current index, the element it added to the new array once, then index of both array is increased, so duplicates are avoided.

Screenshot of the actual test run:
![subtle](subtle.png)

