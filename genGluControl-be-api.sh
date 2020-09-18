echo '----- GLUCONTROL BACKEND RESTFUL API JAVA SPRING BOOT -----'
echo '----- Setting directory /home/ec2-user'
cd /home/ec2-user/
echo '----- Deleting previous git files'
rm -r -f glucose-control-system
echo '----- Cloning project'
git clone https://github.com/pedroazzam/glucose-control-system.git
echo '----- Going to project directory'
cd glucose-control-system
echo '----- Building project mvn clean install -DskipTests'
mvn clean install -DskipTests
echo '----- Deleting old jar file at /home/ec2-user/'
rm -r -f /home/ec2-user/*.jar
echo '----- Coping new jar file at /home/ec2-user/'
cp /home/ec2-user/glucose-control-system/target/*.jar /home/ec2-user/.
echo '----- Going back to initial directory'
cd ..
