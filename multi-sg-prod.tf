resource "aws_security_group" "test_sg_new_1" {
  name = "004-e1-sowi-sg-000"
  description = "Allow traffic with the FedRAMP boundary"
  vpc_id = "vpc-05e5897ff26ebcc5f"
  tags = {
    Name = "004-e1-sowi-sg-000"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16"]
    content {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace SSH"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16"]
    content {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace RDP"
    }
  }

    dynamic "ingress" {
        for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
        content {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = [ingress.value]
        description = "Workspace HTTP"
        }
    }

    dynamic "ingress" {
        for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
        content {
        from_port   = 9443
        to_port     = 9443
        protocol    = "tcp"
        cidr_blocks = [ingress.value]
        description = "Workspace Config Proxy"
        }
    }    

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTPS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 8443
      to_port     = 8443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTPS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 2020
      to_port     = 2020
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace cfgprx pulse ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 30180
      to_port     = 30180
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace Genesys Designer"
    }
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.67.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.81.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.69.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.69.81.0/24"]
      description = "MVA Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.69.69.0/24"]
      description = "MVA Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.124.2.0/23"]
      description = "East SOWI VPC"
  }


  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.126.2.0/23"]
      description = "West SOWI VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.84.0/22"]
      description = "East MGMT VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.89.8/32"]
      description = "MEP Capsule"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.118.84.0/22"]
      description = "West MGMT VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 65535
      protocol    = "udp"
      cidr_blocks = ["10.0.0.80/32"]
      description = "Temporary SBC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.90.177/32"]
      description = "Ansible Tools Server"
  }

  #Egress
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "test_sg_new_2" {
  name = "004-w2-sowi-sg-000"
  description = "Allow traffic within the FedRAMP boundary"
  vpc_id = "vpc-086c01996dc02cd85"
  tags = {
    Name = "004-w2-sowi-sg-000"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16"]
    content {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace SSH"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16"]
    content {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace RDP"
    }
  }

    dynamic "ingress" {
        for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
        content {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = [ingress.value]
        description = "Workspace HTTP"
        }
    }

    dynamic "ingress" {
        for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
        content {
        from_port   = 9443
        to_port     = 9443
        protocol    = "tcp"
        cidr_blocks = [ingress.value]
        description = "Workspace Config Proxy"
        }
    }    

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTPS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 8443
      to_port     = 8443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace HTTPS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 2020
      to_port     = 2020
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace cfgprx pulse ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22"]
    content {
      from_port   = 30180
      to_port     = 30180
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "Workspace Genesys Designer"
    }
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.67.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.81.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.68.69.0/24"]
      description = "WCO Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.69.81.0/24"]
      description = "MVA Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.69.69.0/24"]
      description = "MVA Datacenter"
    }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.124.2.0/23"]
      description = "East SOWI VPC"
  }


  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.126.2.0/23"]
      description = "West SOWI VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.84.0/22"]
      description = "East MGMT VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.89.8/32"]
      description = "MEP Capsule"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.118.84.0/22"]
      description = "West MGMT VPC"
  }

  ingress {
      from_port   = 0
      to_port     = 65535
      protocol    = "udp"
      cidr_blocks = ["10.0.0.80/32"]
      description = "Temporary SBC"
  }

  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["10.116.90.177/32"]
      description = "Ansible Tools Server"
  }
  
  #Egress
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
