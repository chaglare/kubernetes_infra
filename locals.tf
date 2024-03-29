locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetes-caglarcavdar-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.name}"
  cluster_name                      = "kubernetes.caglarcavdar.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetes-caglarcavdar-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetes-caglarcavdar-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetes-caglarcavdar-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetes-caglarcavdar-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetes-caglarcavdar-com.name}"
  region                            = "us-west-2"
  route_table_private-us-west-2a_id = "${aws_route_table.private-us-west-2a-kubernetes-caglarcavdar-com.id}"
  route_table_private-us-west-2b_id = "${aws_route_table.private-us-west-2b-kubernetes-caglarcavdar-com.id}"
  route_table_private-us-west-2c_id = "${aws_route_table.private-us-west-2c-kubernetes-caglarcavdar-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetes-caglarcavdar-com.id}"
  subnet_us-west-2a_id              = "${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}"
  subnet_us-west-2b_id              = "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}"
  subnet_us-west-2c_id              = "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"
  subnet_utility-us-west-2a_id      = "${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}"
  subnet_utility-us-west-2b_id      = "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}"
  subnet_utility-us-west-2c_id      = "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetes-caglarcavdar-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetes-caglarcavdar-com.id}"
}
