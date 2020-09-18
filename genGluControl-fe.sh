echo '----- GLUCONTROL FRONTEND ANGULAR -----'
echo '----- Setting directory /home/ec2-user'
cd /home/ec2-user/
echo '----- Deleting previous git files'
rm -r -f glucontrol-fe
echo '----- Cloning project'
git clone https://github.com/pedroazzam/glucontrol-fe.git
echo '----- Going to project directory'
cd glucontrol-fe
echo '----- Building Angular project'
ng build
echo '----- Deleting old files at /var/www/html/'
rm -r -f /var/www/html/*
echo '----- Coping new files at /var/www/html/'
cp /home/ec2-user/glucontrol-fe/dist/gc-fe/* /var/www/html/.
echo '----- Going back to initial directory'
cd ..
