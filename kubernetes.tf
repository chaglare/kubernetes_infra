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

