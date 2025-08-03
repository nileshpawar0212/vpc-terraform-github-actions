variable "sg_id" {
    description = "SG ID FOr ec2"
    type = string
}

variable "subnets" {
    description = "Subnet for ec2"
    type = list(string)
}

variable "ec2_names" {
  type        = list(string)
  description = "List of EC2 instance names"
  default = [ "Wbe1","Web2" ]

}