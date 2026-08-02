output "instance_id" {
  value = aws_instance.mjsinst[*].id

}

output "pubip" {
  value = aws_instance.mjsinst[*}.public_ip
}

output "instname" {
  value = aws_instance.mjsinst[*].tags["Name"]
}
