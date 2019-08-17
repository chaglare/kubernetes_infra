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
