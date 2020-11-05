resource "aws_security_group" "test_sg_new" {
  name = "test_sg_new"
  description = "Allow traffic from specific phone providers in"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-prod-all-windows-sg"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "HTTP"
    }
  }
}
