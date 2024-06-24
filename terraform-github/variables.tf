variable "instance_type"{
    type = string
}

variable "region" {
    type = string
}

variable  "subnet_id" {
    type = string
}

variable  "vpc_id" {
    type = string
}

variable "input_port" {
    type = number
}

variable "tag" {
    type = string
}

variable "access_key" {
    type = string
    sensitive = true
}

variable "secret_key" {
    type = string
    sensitive = true
}