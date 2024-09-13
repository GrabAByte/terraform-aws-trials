resource "aws_instance" "grababyte-server" {
  ami           = local.ami
  instance_type = local.instance_size
  tags          = local.tags
}
