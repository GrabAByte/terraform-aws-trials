resource "aws_instance" "grababyte-server" {
  ami           = var.ami_id
  instance_type = var.instance_size
  tags          = var.tags
}
