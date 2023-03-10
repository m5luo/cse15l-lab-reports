echo "======================" 
rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

cd student-submission

# check that ListExamples exist
if [[ -f ListExamples.java ]]
then
    echo ""
    echo "ListExamples found."
else
    echo ""
    echo "Need file ListExamples.java."
    echo ""  
    echo "======================"  
    exit 1
fi

# add tests and JUnit library to working directory
cp ../TestListExamples.java ./
cp -r ../lib ./

# ls and pwd used in coding process to see is under the correct directory
#ls
#pwd

# compile
javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java 2>test-list-output.txt

# check if compile was successful
if [ $? -eq 0 ]
then   
    echo ""
    echo "Compile successful!"
else   
    echo ""
    echo "Error found."
    echo ""  
    cat test-list-output.txt
    exit
fi

# get method signature
ACTUAL_SIG=`grep "filter" ListExamples.java`

# used when coding to see grep output is as expected
#echo $ACTUAL_SIG

# check method signature
if [ "$ACTUAL_SIG" != "  static List<String> filter(List<String> list, StringChecker sc) {" ]
then   
    echo ""
    echo "Check method signature."
    echo ""   
    exit
fi

# ls used in codeing process to ensure compile was successful and class files have been created inside the directory
#ls

# run test
java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples > test-output.txt

FAILURES=`grep -c FAILURES!!! test-output.txt`

if [[ $FAILURES -eq 0 ]]
then
    echo ""    
    echo 'All tests passed.' 
    echo 'Score: 100%'
    echo ""   
else
    RESULT_LINE=`grep "Tests run:" test-output.txt`
    # used to get number of test run adn failed
    GET_TOTAL_TEST=`echo $RESULT_LINE | cut -d":" -f 2 `
    TOTAL_TEST=`echo $GET_TOTAL_TEST | cut -d"," -f 1`
    GET_FAILED_TEST=`echo $RESULT_LINE | cut -d":" -f 3`
    FAILED_TEST=`echo $GET_FAILED_TEST | cut -d" " -f 1`

    # echo commands were used in the writing code process to see outputs
    #echo $TOTAL_TEST
    #echo $FAILED_TEST

    SUCCESS=$(($TOTAL_TEST-$FAILED_TEST))

    echo ""  
    echo "JUnit output was:"
    cat test-output.txt
    echo ""
    echo ""
    echo "Score: $SUCCESS/$TOTAL_TEST"
    echo ""
    echo ""
fi
