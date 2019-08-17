output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetes-caglarcavdar-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.name}"
}

output "cluster_name" {
  value = "kubernetes.caglarcavdar.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetes-caglarcavdar-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetes-caglarcavdar-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetes-caglarcavdar-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetes-caglarcavdar-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.name}"
}

output "region" {
  value = "us-west-2"
}

output "route_table_private-us-west-2a_id" {
  value = "${aws_route_table.private-us-west-2a-kubernetes-caglarcavdar-com.id}"
}

output "route_table_private-us-west-2b_id" {
  value = "${aws_route_table.private-us-west-2b-kubernetes-caglarcavdar-com.id}"
}

output "route_table_private-us-west-2c_id" {
  value = "${aws_route_table.private-us-west-2c-kubernetes-caglarcavdar-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
}

output "subnet_us-west-2a_id" {
  value = "${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}"
}

output "subnet_us-west-2b_id" {
  value = "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}"
}

output "subnet_us-west-2c_id" {
  value = "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"
}

output "subnet_utility-us-west-2a_id" {
  value = "${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}"
}

output "subnet_utility-us-west-2b_id" {
  value = "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}"
}

output "subnet_utility-us-west-2c_id" {
  value = "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetes-caglarcavdar-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
}
