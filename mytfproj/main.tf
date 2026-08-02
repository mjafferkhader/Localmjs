resource "aws_instance" "mjsinst" {
  count = terraform.workspace == "prod" ? 3 : 1
  ami           = data.aws_ami.mjs_ami.id
  instance_type = terraform.workspace == "prod" ? "t3.micro" : "t2.micro"

  tags = {
    Name = terraform.workspace == "prod" ? "prod-app${count.index + 1}" : "${terraform.workspace}-app"
    Environment = terraform.workspace
  }
}
