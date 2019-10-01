# This bash script cd's into the local hosts temporary directory, and clones our github url
# Then we call mvn test to run the project's test files

rm test-execution.txt
cd /tmp
git clone https://github.com/jpandya1/retrofit.git
cd retrofit
git remote show origin | grep "Fetch URL:" >> test-execution.txt
mvn test >> test-execution.txt
