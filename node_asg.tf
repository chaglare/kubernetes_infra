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
