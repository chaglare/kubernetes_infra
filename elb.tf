resource "aws_elb" "api-kubernetes-caglarcavdar-com" {
  name = "api-kubernetes-caglarcavd-n6t5tu"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetes-caglarcavdar-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "api.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetes-caglarcavdar-com" {
  name = "bastion-kubernetes-caglar-rhiqgo"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetes-caglarcavdar-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "bastion.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}
