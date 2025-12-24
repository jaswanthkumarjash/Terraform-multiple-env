variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = map
    default = {
        dev = "t3.micro"
        prod = "t3.small"
    }
}

variable "environment" {
    type = map
    default = {
        dev = "dev"
        prod = "prod"
    }
}

variable "project" {
    type = string
    default = "roboshop"
}

variable "sg_name" {
    type = string
    default = "allow-all"
    description = "Security Group Name to attach with ec2 instance"
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    default = "-1"
}

# variable "console_input" {
#     type = list(string)
#     description = "Enter the names you want to add: "
# }