resource "aws_nat_gateway" "us-west-2a-kubernetes-caglarcavdar-com" {
  allocation_id = "${aws_eip.us-west-2a-kubernetes-caglarcavdar-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2a.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2b-kubernetes-caglarcavdar-com" {
  allocation_id = "${aws_eip.us-west-2b-kubernetes-caglarcavdar-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2b.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2c-kubernetes-caglarcavdar-com" {
  allocation_id = "${aws_eip.us-west-2c-kubernetes-caglarcavdar-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2c.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetes-caglarcavdar-com.id}"
}

resource "aws_route" "private-us-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2a-kubernetes-caglarcavdar-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2a-kubernetes-caglarcavdar-com.id}"
}

resource "aws_route" "private-us-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2b-kubernetes-caglarcavdar-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2b-kubernetes-caglarcavdar-com.id}"
}

resource "aws_route" "private-us-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2c-kubernetes-caglarcavdar-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2c-kubernetes-caglarcavdar-com.id}"
}

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

resource "aws_route_table" "kubernetes-caglarcavdar-com" {
  vpc_id = "${aws_vpc.kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/kops/role"                           = "public"
  }
}

resource "aws_route_table" "private-us-west-2a-kubernetes-caglarcavdar-com" {
  vpc_id = "${aws_vpc.kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "private-us-west-2a.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/kops/role"                           = "private-us-west-2a"
  }
}

resource "aws_route_table" "private-us-west-2b-kubernetes-caglarcavdar-com" {
  vpc_id = "${aws_vpc.kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "private-us-west-2b.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/kops/role"                           = "private-us-west-2b"
  }
}

resource "aws_route_table" "private-us-west-2c-kubernetes-caglarcavdar-com" {
  vpc_id = "${aws_vpc.kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "private-us-west-2c.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/kops/role"                           = "private-us-west-2c"
  }
}

resource "aws_route_table_association" "private-us-west-2a-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2a-kubernetes-caglarcavdar-com.id}"
}

resource "aws_route_table_association" "private-us-west-2b-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2b-kubernetes-caglarcavdar-com.id}"
}

resource "aws_route_table_association" "private-us-west-2c-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2c-kubernetes-caglarcavdar-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2a-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2b-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2c-kubernetes-caglarcavdar-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"
  route_table_id = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
}

resource "aws_security_group" "api-elb-kubernetes-caglarcavdar-com" {
  name        = "api-elb.kubernetes.caglarcavdar.com"
  vpc_id      = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "api-elb.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-kubernetes-caglarcavdar-com" {
  name        = "bastion-elb.kubernetes.caglarcavdar.com"
  vpc_id      = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "bastion-elb.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetes-caglarcavdar-com" {
  name        = "bastion.kubernetes.caglarcavdar.com"
  vpc_id      = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "bastion.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetes-caglarcavdar-com" {
  name        = "masters.kubernetes.caglarcavdar.com"
  vpc_id      = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "masters.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetes-caglarcavdar-com" {
  name        = "nodes.kubernetes.caglarcavdar.com"
  vpc_id      = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "nodes.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-caglarcavdar-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetes-caglarcavdar-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-caglarcavdar-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetes-caglarcavdar-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-caglarcavdar-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetes-caglarcavdar-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetes-caglarcavdar-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-west-2a-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2a.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Private"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/internal-elb"                   = "1"
  }
}

resource "aws_subnet" "us-west-2b-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2b.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Private"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/internal-elb"                   = "1"
  }
}

resource "aws_subnet" "us-west-2c-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2c.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Private"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/internal-elb"                   = "1"
  }
}

resource "aws_subnet" "utility-us-west-2a-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "utility-us-west-2a.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Utility"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_subnet" "utility-us-west-2b-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "utility-us-west-2b.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Utility"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_subnet" "utility-us-west-2c-kubernetes-caglarcavdar-com" {
  vpc_id            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "utility-us-west-2c.kubernetes.caglarcavdar.com"
    SubnetType                                          = "Utility"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_vpc" "kubernetes-caglarcavdar-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetes-caglarcavdar-com" {
  domain_name         = "us-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetes-caglarcavdar-com" {
  vpc_id          = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetes-caglarcavdar-com.id}"
}

