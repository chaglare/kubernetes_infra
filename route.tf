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
