resource "aws_route53_record" "api-kubernetes-caglarcavdar-com" {
  name = "api.kubernetes.caglarcavdar.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetes-caglarcavdar-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetes-caglarcavdar-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2T3XGGBR5FUQ3"
}

resource "aws_route53_record" "bastion-kubernetes-caglarcavdar-com" {
  name = "bastion.kubernetes.caglarcavdar.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetes-caglarcavdar-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetes-caglarcavdar-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2T3XGGBR5FUQ3"
}

resource "aws_route53_zone_association" "Z2T3XGGBR5FUQ3" {
  zone_id = "/hostedzone/Z2T3XGGBR5FUQ3"
  vpc_id  = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
}
