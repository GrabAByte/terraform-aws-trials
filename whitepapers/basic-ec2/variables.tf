variable "environment_map" {
  type        = map(any)
  description = "The environment lookup for each workspace"
  default = {
    development    = "development"
    pre-production = "pre-production"
    production     = "production"
  }
}

variable "ami_id_map" {
  type        = map(any)
  description = "The AMI ID to use for the EC2 instance, this will correlate to a specific OS"
  default = {
    development    = "ami-00072e18ac03417dc"
    pre-production = "ami-00072e18ac03417dc"
    production     = "ami-0df0e7600ad0913a9"
  }
}

variable "instance_size_map" {
  type        = map(any)
  description = "The specific sizing of the EC2 instance"
  default = {
    development    = "t2.nano"
    pre-production = "t2.medium"
    production     = "t2.large"
  }
}

locals {
  environment   = lookup(var.environment_map, terraform.workspace, "development")
  ami           = var.ami_id_map[local.environment]
  instance_size = var.instance_size_map[local.environment]
  tags = {
    environment   = "grababyte-${local.environment}"
    ami           = local.ami
    instance_size = local.instance_size
  }
}
