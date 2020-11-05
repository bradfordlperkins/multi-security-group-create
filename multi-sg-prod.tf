#Security Group variables
variable "ingress_web_ports_1" {
  default = [1234,80,443,1161,1433,2020,2050,3456,4040,4041,4042,4060,4061,4063,5000,5050,5432,7000,7001,7076,7077,7078]
}

resource "aws_security_group" "000_test_sg" {
  name = "000_test_sg"
  description = "Test SG"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "000_test_sg"
  }
}

resource "aws_security_group_rule" "test_sg_rule" {
  count = "${length(var.ingress_web_ports_1)}"

  type        = "ingress"
  protocol    = "tcp"
  cidr_blocks = ["10.116.248.0/23"]
  from_port   = "${element(var.ingress_web_ports_1, count.index)}"
  to_port     = "${element(var.ingress_web_ports_1, count.index)}"

  security_group_id = "${aws_security_group.000_test_sg.id}"
}