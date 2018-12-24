This image has been created on aws instance and can be broswed as  http://35.154.23.80:8080/companyNews/a


1) Created a aws EC2 instance with below configurations:

IPv4 Public IP - 35.154.23.80
Instance type - t2.micro
Availability zone - ap-south-1a
Security groups - automated,
inbound rule  
Custom TCP Rule - Port -8080
Http - Port-80
Https - Port-443
SSH - Port-22

2) Login AWS CLI instance 

ssh ec2-user@35.154.23.80 -i keytw.pem 
copy companyNews.war and static.zip in /tmp directoty
scp -i keytw.pem -r /Users/saurabhpandey/Downloads/war ec2-user@5.154.23.80: /tmp
copy both the files to home directory
3) Install docker 
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

3) In home directory Copy below files should be available 
context.xml
tomcat-users.xml
companyNews.war
static.zip

4) Created Dockerfile in home directory(/home/ec2-user)
5)Build image "webz"
docker image build -t webz . 
6) Create container
docker container run -p 8080:8080 -it webz
7)To confirm website availvality run http://35.154.23.80:8080/companyNews/ on browser.
8) Push the image in docker hub 
docker push pandeyims/webz
Image uploaded in Docker hub and can be pulled "docker pull pandeyims/webz:1.0




