data "aws_ami" "latest_ami_id"{
    most_recent = true
    owners = ["amazon"]
    filter{
        name = "name"
        values = ["al2023-ami-2023*-kernel-*"]
    }
}