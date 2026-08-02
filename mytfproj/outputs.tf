output "instances" {
  value = [
    for instance in aws_instance.mjsinst : {
      id = aws_instance.mjsinst.id
      name = aws_instance.mjsinst.tags["Name"]
      pubip = aws_instance.mjsinst.public_ip
    }
  ]
}
