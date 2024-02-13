resource "aws_instance" "instance_1" {
    instance_type = "t2.micro"
    ami = data.aws.latest_ami_id.latest_ami_id
    security_groups = [WordPressSecurityGroup]

 connection {
    type = "ssh"
    user = "ec2-user"
    #private_key =
    host = self.public_ip 
 }

}

