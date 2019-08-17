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
