AWS-project--Host-a-website-on-EC2
This guide provides step-by-step instructions on how to host a static website using AWS EC2.

Prerequisites
AWS Account
Basic knowledge of AWS EC2
Familiarity with the command line interface
Steps
Create an EC2 Instance:

Log in to your AWS Management Console.
Navigate to the EC2 dashboard.
Launch a new EC2 instance with default settings.
Connect to the EC2 Instance:

Use SSH to connect to the EC2 instance.
Log in as the root user using sudo su -.
Update the System:

Run yum update -y to update the system packages.
Install Apache HTTP Server:

Install Apache HTTP Server using yum install -y httpd.
Check HTTPD Status:

Verify the status of HTTPD using systemctl status httpd.
Create Directory:

Create a directory for temporary files using mkdir temp.
Navigate into the directory using cd temp.
Download Website Files:

Use wget followed by the website link to download the zip file.
Verify the file's availability using ls -lrt.
Unzip the file using unzip.
Move Files to Web Root:

Move all the files to the web server's root directory using mv * /var/www/html/.
Navigate to the directory using cd /var/www/html.
Verify the files using ls -lrt.
Start HTTPD Service:

check the status again using systemctl status httpd
enable HTTPD service using systemctl enable httpd.
start HTTPD to start on boot using systemctl start httpd.
Check Website:

Open a web browser and enter your EC2 instance's public IP address.
If the website is not accessible, modify the EC2 instance's security group to allow HTTP and HTTPS traffic.
Modify Security Group:

Navigate to the EC2 dashboard and select the instance.
Modify the security group to allow inbound HTTP and HTTPS traffic.
Save the changes.
Access Website:

Refresh the web browser and verify that the website is accessible using the EC2 instance's public IP address.
Conclusion
Congratulations! You have successfully hosted a static website on AWS EC2. You can now customize your website further or add additional features as needed.
