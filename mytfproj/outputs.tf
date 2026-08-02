output "instances" {
  value = [
    for instance in aws_instance.mjsinst : {
      id = instance.id
      name = instance.tags["Name"]
      pubip = instance.public_ip
    }
  ]
}
