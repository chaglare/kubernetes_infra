resource "aws_key_pair" "kubernetes-kubernetes-caglarcavdar-com-edbbb94afeaf8d56352896fb6339b895" {
  key_name   = "kubernetes.kubernetes.caglarcavdar.com-ed:bb:b9:4a:fe:af:8d:56:35:28:96:fb:63:39:b8:95"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetes.caglarcavdar.com-edbbb94afeaf8d56352896fb6339b895_public_key")}"
}