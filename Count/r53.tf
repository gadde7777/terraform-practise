
# 2. Create a DNS A Record for the website
resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count = 10
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1 
  records = [aws_instance.example[count.index].private_ip]
}

resource "aws_route53_record" "wwwf" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 1 
   records = [aws_instance.example[index(var.instances,"frontend")].public_ip]
}
