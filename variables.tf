variable "instance_type_size" {
    default = "t2.micro"

}
variable "port_list" {
    type = list(number)
    default = [80,443,22]

}
variable "cidr_block_for_ingress"{
    default = "0.0.0.0/0"
}