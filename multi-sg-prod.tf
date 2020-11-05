resource "aws_security_group" "test_sg_new_1" {
  name = "001-e1-app-sg-000"
  description = "Allow traffic over specific ports"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-e1-app-sg-000"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 1234
      to_port     = 1234
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "gms GenericServer"
    }
  }

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

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "HTTPS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 1161
      to_port     = 1161
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "snmpma SNMPAgent"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap wfm etl DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2020
      to_port     = 2020
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "cfgprx pulse ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2050
      to_port     = 2050
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "gir muxer ThirdPartyServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3456
      to_port     = 3456
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig email EmailServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4040
      to_port     = 4040
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap pulsecol DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4041
      to_port     = 4041
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap logs DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4042
      to_port     = 4042
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "SM Platform GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4060
      to_port     = 4060
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap icon voice DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4061
      to_port     = 4061
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap gim DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4063
      to_port     = 4063
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap icon cfg DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig ixn InteractionServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5050
      to_port     = 5050
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ob ocs CMServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dap logs jdbc DBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7000
      to_port     = 7000
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig iwdhistory cluster ApplicationCluster"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7001
      to_port     = 7001
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig class ClassificationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7076
      to_port     = 7076
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "mrcp tts ResourceAccessPoint"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7077
      to_port     = 7077
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "mrcp tts ResourceAccessPoint"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7078
      to_port     = 7078
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "mrcp asr ResourceAccessPoint"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8010
      to_port     = 8010
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm server etl WFMServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.67.0.0/16","10.68.0.0/16"]
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = [ingress.value]
      description = "On-prem tools"
    }
  }

  #Egress
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
