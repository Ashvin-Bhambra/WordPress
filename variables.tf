variable "secret_key" {
  description = "The secret key"
  type        = string
}

variable "access_key" {
  description = "The access key"
  type        = string
}

variable "the_region" {
  description = "Selected region"
  default     = "eu-west-1"
}

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