Installing and launching an jenkins server hosted on AWS using Terraform.

ACCEPTANCE CTITERIA:
1. Download and extract the  latest release of the Terraform. 

[Download Terraform - Terraform by HashiCorp](https://www.terraform.io/downloads.html)

unzip terraform

2. You should have an AWS account credentials. 

Setup IAM access key and secret on your AWS account.

To login to your account run on your terminal aws configure

AWS Access Key ID [None]: EXAMPLE

AWS Secret Access Key [None]: EXAMPLEKEY

Default region name [None]: us-west-2

Default output format [None]: json


SOLUTION: 

1. provider.tf - This section sets up the provider (the plugin for terraform which tells it how to talk with a cloud provider) and the region where the resources will be created. 
2. key.tf - creates a key and stores it in the region you define in var.tf file. And it is used to connect to the created instance via ssh.
3. sg.tf - creates a security group to open ports 22, 80, 443 and 8080.
Port  22 -Secure Shell (SSH) - used for secure logins. 
Port 80-Port 80 is the port number assigned to commonly used internet *communication* protocol, Hypertext Transfer Protocol (HTTP)
Port 443-*Port 443* is mainly used by web servers providing HTTPS (HTTP encrypted by SSL or TLS)
Port 8080 - default port for jenkins.
4. data_ami.tf - This data source is used to get the ID of a registered AMI to create an EC2 instance. 
5. ec2.tf - creates an ec2 instances, logs into the instance, installs, starts and enables the jenkins using userdata.
6. Output.tf - gives you a public IP of your instance.
7. Var.tf - contains variables where to create an instance, the size of an instance and private/public key to login to the instance.

HOW TO USE THIS CODE:

1. Clone this repo
2. Run terraform init
3. Run terraform plan
4. Run terraform apply