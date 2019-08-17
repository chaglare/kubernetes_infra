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
