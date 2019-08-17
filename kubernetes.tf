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

provider "aws" {
  region = "us-west-2"
}

resource "aws_autoscaling_attachment" "bastions-kubernetes-caglarcavdar-com" {
  elb                    = "${aws_elb.bastion-kubernetes-caglarcavdar-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetes-caglarcavdar-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-kubernetes-caglarcavdar-com" {
  elb                    = "${aws_elb.api-kubernetes-caglarcavdar-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-kubernetes-caglarcavdar-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-kubernetes-caglarcavdar-com" {
  elb                    = "${aws_elb.api-kubernetes-caglarcavdar-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-kubernetes-caglarcavdar-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-kubernetes-caglarcavdar-com" {
  elb                    = "${aws_elb.api-kubernetes-caglarcavdar-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-kubernetes-caglarcavdar-com.id}"
}

resource "aws_autoscaling_group" "bastions-kubernetes-caglarcavdar-com" {
  name                 = "bastions.kubernetes.caglarcavdar.com"
  launch_configuration = "${aws_launch_configuration.bastions-kubernetes-caglarcavdar-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.utility-us-west-2c-kubernetes-caglarcavdar-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2a-masters-kubernetes-caglarcavdar-com" {
  name                 = "master-us-west-2a.masters.kubernetes.caglarcavdar.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2a-masters-kubernetes-caglarcavdar-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2a.masters.kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2b-masters-kubernetes-caglarcavdar-com" {
  name                 = "master-us-west-2b.masters.kubernetes.caglarcavdar.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2b-masters-kubernetes-caglarcavdar-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2b.masters.kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2c-masters-kubernetes-caglarcavdar-com" {
  name                 = "master-us-west-2c.masters.kubernetes.caglarcavdar.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2c-masters-kubernetes-caglarcavdar-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2c.masters.kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-kubernetes-caglarcavdar-com" {
  name                 = "nodes.kubernetes.caglarcavdar.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetes-caglarcavdar-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2b-kubernetes-caglarcavdar-com.id}", "${aws_subnet.us-west-2c-kubernetes-caglarcavdar-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetes.caglarcavdar.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "a.etcd-events.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/events"                                = "a/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "a.etcd-main.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/main"                                  = "a/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "b.etcd-events.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/events"                                = "b/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "b.etcd-main.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/main"                                  = "b/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "c.etcd-events.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/events"                                = "c/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetes-caglarcavdar-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "c.etcd-main.kubernetes.caglarcavdar.com"
    "k8s.io/etcd/main"                                  = "c/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_eip" "us-west-2a-kubernetes-caglarcavdar-com" {
  vpc = true

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2a.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_eip" "us-west-2b-kubernetes-caglarcavdar-com" {
  vpc = true

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2b.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_eip" "us-west-2c-kubernetes-caglarcavdar-com" {
  vpc = true

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "us-west-2c.kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

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

resource "aws_iam_instance_profile" "bastions-kubernetes-caglarcavdar-com" {
  name = "bastions.kubernetes.caglarcavdar.com"
  role = "${aws_iam_role.bastions-kubernetes-caglarcavdar-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetes-caglarcavdar-com" {
  name = "masters.kubernetes.caglarcavdar.com"
  role = "${aws_iam_role.masters-kubernetes-caglarcavdar-com.name}"
}

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

resource "aws_internet_gateway" "kubernetes-caglarcavdar-com" {
  vpc_id = "${aws_vpc.kubernetes-caglarcavdar-com.id}"

  tags = {
    KubernetesCluster                                   = "kubernetes.caglarcavdar.com"
    Name                                                = "kubernetes.caglarcavdar.com"
    "kubernetes.io/cluster/kubernetes.caglarcavdar.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895" {
  key_name   = "kubernetes.kubernetes.caglarcavdar.com-ed:bb:b9:4a:fe:af:8d:56:35:28:96:fb:63:39:b8:95"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetes.caglarcavdar.com-edbbb94afeaf8d56352896fb6339b895_public_key")}"
}

resource "aws_launch_configuration" "bastions-kubernetes-caglarcavdar-com" {
  name_prefix                 = "bastions.kubernetes.caglarcavdar.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetes-caglarcavdar-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetes-caglarcavdar-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2a-masters-kubernetes-caglarcavdar-com" {
  name_prefix                 = "master-us-west-2a.masters.kubernetes.caglarcavdar.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-caglarcavdar-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2a.masters.kubernetes.caglarcavdar.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2b-masters-kubernetes-caglarcavdar-com" {
  name_prefix                 = "master-us-west-2b.masters.kubernetes.caglarcavdar.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-caglarcavdar-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2b.masters.kubernetes.caglarcavdar.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2c-masters-kubernetes-caglarcavdar-com" {
  name_prefix                 = "master-us-west-2c.masters.kubernetes.caglarcavdar.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-caglarcavdar-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-caglarcavdar-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2c.masters.kubernetes.caglarcavdar.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetes-caglarcavdar-com" {
  name_prefix                 = "nodes.kubernetes.caglarcavdar.com-"
  image_id                    = "ami-0d8618ba6320df983"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetes-caglarcavdar-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetes-caglarcavdar-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetes.caglarcavdar.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

terraform = {
  required_version = ">= 0.9.3"
}
