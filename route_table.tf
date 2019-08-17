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
