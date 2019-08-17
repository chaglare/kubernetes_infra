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