resource "aws_iam_instance_profile" "nodes-kubernetes-caglarcavdar-com" {
  name = "nodes.kubernetes.caglarcavdar.com"
  role = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.name}"
}

resource "aws_iam_role" "bastions-kubernetes-caglarcavdar-com" {
  name               = "bastions.kubernetes.caglarcavdar.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetes.caglarcavdar.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetes-caglarcavdar-com" {
  name               = "masters.kubernetes.caglarcavdar.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetes.caglarcavdar.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetes-caglarcavdar-com" {
  name               = "nodes.kubernetes.caglarcavdar.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetes.caglarcavdar.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetes-caglarcavdar-com" {
  name   = "bastions.kubernetes.caglarcavdar.com"
  role   = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetes.caglarcavdar.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetes-caglarcavdar-com" {
  name   = "masters.kubernetes.caglarcavdar.com"
  role   = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetes.caglarcavdar.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetes-caglarcavdar-com" {
  name   = "nodes.kubernetes.caglarcavdar.com"
  role   = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetes.caglarcavdar.com_policy")}"
}
