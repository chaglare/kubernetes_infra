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

