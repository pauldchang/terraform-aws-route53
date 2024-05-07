resource "aws_route53_zone" "pauldchang" {
  name = "test.pauldchang.com"
}

resource "aws_route53_record" "pauldchang" {
  allow_overwrite = true
  name            = "test.pauldchang.com"
  ttl             = 172800
  type            = "NS"
  zone_id         = aws_route53_zone.pauldchang.zone_id

  records = [
    aws_route53_zone.pauldchang.name_servers[0],
    aws_route53_zone.pauldchang.name_servers[1],
    aws_route53_zone.pauldchang.name_servers[2],
    aws_route53_zone.pauldchang.name_servers[3],
  ]
}