# resource "aws_instance" "web" {
#   #count = 11   #count.index is a special variable given by terraform
#   count = length(var.instance_names)
#   ami           = var.ami_id  #devops-practice
#   instance_type = local.instance_type
#   tags = {
#     Name =  var.instance_names[count.index]
#   }
# }

# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #Variable interpolation
#   type    = "A"
#   ttl     = 1
#   records = [local.ip]
# }

# Variable interpolation allows you to include a variable value within another string, ultimately, helping you build dynamic configuration values.
  

resource "aws_instance" "web" {
  ami = var.ami_id  #devops-practice
  instance_type = local.instance_type
  tags = {
  Name =  "locals"
  }
}