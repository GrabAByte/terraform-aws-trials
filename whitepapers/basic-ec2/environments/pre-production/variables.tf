variable "ami_id" {
  type = string
  description = "The AMI ID to use for the EC2 instance, this will correlate to a specific OS"
}

variable "instance_size" {
  type        = string
  description = "The specification sizing of the EC2 insrance"
}

variable "tags" {
  type        = map(string)
  description = "A map of key value pair metadata to associate with the resource"
}
