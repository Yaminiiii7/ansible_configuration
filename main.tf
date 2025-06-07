provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_instance" "host01" {
  ami           = "ami-03a13a09a711d3871"     # Red Hat Enterprise Linux version 9 
  instance_type = "t2.micro"
	key_name = "ec2_keypair"
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.security_group_id

  provisioner "local-exec" {
     command = "sleep 30; ssh-keyscan ${self.private_ip} >> ~/.ssh/known_hosts"
  }

}

resource "aws_instance" "host02" {
  ami           = "ami-03a13a09a711d3871"    # Red Hat Enterprise Linux version 9 
  instance_type = "t2.micro"
	key_name = "ec2_keypair"
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.security_group_id

  provisioner "local-exec" {
     command = "sleep 30; ssh-keyscan ${self.private_ip} >> ~/.ssh/known_hosts"
	}
}

resource "aws_instance" "host03" {
  ami           = "ami-0779caf41f9ba54f0"    # Red Hat Enterprise Linux version 9 
  instance_type = "t2.micro"
	key_name = "ec2_keypair"
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.security_group_id

  provisioner "local-exec" {
     command = "sleep 30; ssh-keyscan ${self.private_ip} >> ~/.ssh/known_hosts"
	}
}



