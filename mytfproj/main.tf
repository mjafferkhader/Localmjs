resource "aws_instance" "mjsinst" {
  ami = data.aws_ami.mjs_ami.id
  instance_type = "t2.micro"
}