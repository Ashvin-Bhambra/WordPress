resource "aws_security_group" "WordPressSecurityGroup"{
    name = "WordPressSecurityGroup"
    description = "Allows TLS inbound traffic"

    dynamic "ingress" { 
        for_each = var.port_list
        content{
            description = "https"
            from_port = ingress.value
            to_port = ingress.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    } 
}