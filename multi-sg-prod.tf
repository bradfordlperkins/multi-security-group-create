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

resource "aws_security_group" "test_sg_new_2" {
  name = "001-e1-app-sg-001"
  description = "Allow traffic over specific ports"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-e1-app-sg-001"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8020
      to_port     = 8020
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm builder WFMBuilder"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8030
      to_port     = 8030
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm daemon WFMDaemon"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8040
      to_port     = 8040
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm data agg WFMDataAggregator"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8050
      to_port     = 8050
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm server WFMServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "accel gax GenesysAdministratorServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8095
      to_port     = 8095
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig gre cluster ApplicationCluster"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8443
      to_port     = 8443
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "gir rcs GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 9100
      to_port     = 9100
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "gir rws cassandra ThirdPartyServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7260
      to_port     = 7260
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "FlexLM"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8093
      to_port     = 8093
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig ixn InteractionServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 12050
      to_port     = 12050
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "pulsecol InfomartStatCollector"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 12055
      to_port     = 12055
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "pulsecol InfomartStatCollector"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2010
      to_port     = 2010
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "cfgprx cfg ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2025
      to_port     = 2025
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "cfgprx cfg ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2035
      to_port     = 2035
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "confserv ConfigServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2030
      to_port     = 2030
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "msgsv logs MessageServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2045
      to_port     = 2045
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "scs SCS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2040
      to_port     = 2040
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "scs SCS"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2055
      to_port     = 2055
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "statsv rt StatServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2060
      to_port     = 2060
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "statsv rpt StatServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2065
      to_port     = 2065
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "statsv rpt StatServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2070
      to_port     = 2070
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "urs RouterServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8060
      to_port     = 8060
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "urs RouterServer"
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

resource "aws_security_group" "test_sg_new_3" {
  name = "001-e1-app-sg-002"
  description = "Allow traffic over specific ports"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-e1-app-sg-002"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8070
      to_port     = 8070
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "urs RouterServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2075
      to_port     = 2075
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "urs RouterServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2080
      to_port     = 2080
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7090
      to_port     = 7090
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2082
      to_port     = 2082
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2081
      to_port     = 2081
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors 3 b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2086
      to_port     = 2086
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors 3 b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7091
      to_port     = 7091
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors 3 b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2083
      to_port     = 2083
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors 3 b OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2090
      to_port     = 2090
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "msgsv scs p MessageServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2095
      to_port     = 2095
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "msgsv scs p MessageServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3010
      to_port     = 3010
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "mcp GVPMCP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3015
      to_port     = 3015
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "mcp GVPMCP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3030
      to_port     = 3030
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "icon cfg CallConcentrator"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3035
      to_port     = 3035
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "icon cfg CallConcentrator"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3800
      to_port     = 3800
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "rm GVPResourceMgr"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 3850
      to_port     = 3850
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "rm GVPResourceMgr"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4045
      to_port     = 4045
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv logs RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4046
      to_port     = 4046
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv logs RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4065
      to_port     = 4065
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon p RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4062
      to_port     = 4062
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon b RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4067
      to_port     = 4067
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon b RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4068
      to_port     = 4068
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon p RealDBServer"
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

resource "aws_security_group" "test_sg_new_4" {
  name = "001-e1-app-sg-003"
  description = "Allow traffic over specific ports"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-e1-app-sg-003"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4070
      to_port     = 4070
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon b RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4066
      to_port     = 4066
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dbsv icon p RealDBServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4210
      to_port     = 4210
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ucs ContactServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 4215
      to_port     = 4215
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ucs ContactServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5003
      to_port     = 5003
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5001
      to_port     = 5001
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5002
      to_port     = 5002
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5005
      to_port     = 5005
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5160
      to_port     = 5160
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5165
      to_port     = 5165
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5006
      to_port     = 5006
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx agent GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5007
      to_port     = 5007
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips cfpb agent TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5008
      to_port     = 5008
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips cfpb agent TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5015
      to_port     = 5015
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx cfpb route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5170
      to_port     = 5170
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx cfpb route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5175
      to_port     = 5175
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx cfpb route GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5016
      to_port     = 5016
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sipprx cfpb agent GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7005
      to_port     = 7005
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "gim GDMETL"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7010
      to_port     = 7010
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig iwdhistory GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7011
      to_port     = 7011
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig iwdhistory GenericServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 2085
      to_port     = 2085
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "ors p OrchestrationServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7605
      to_port     = 7605
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig iwdruntime iWDRuntimeNode"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7604
      to_port     = 7604
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig iwdruntime iWDRuntimeNode"
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

resource "aws_security_group" "test_sg_new_5" {
  name = "001-e1-app-sg-004"
  description = "Allow traffic over specific ports"
  vpc_id = "vpc-0c6a1b725e18ba61b"
  tags = {
    Name = "001-e1-app-sg-004"
  }

  #Ingress rule - 1 port, many sources
  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7817
      to_port     = 7817
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig gre BusinessRulesExecutionServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 7818
      to_port     = 7818
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig gre BusinessRulesExecutionServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8015
      to_port     = 8015
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm server etl WFMServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8025
      to_port     = 8025
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm builder WFMBuilder"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8035
      to_port     = 8035
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm daemon WFMDaemon"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8045
      to_port     = 8045
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm data agg WFMDataAggregator"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8055
      to_port     = 8055
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "wfm server WFMServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8079
      to_port     = 8079
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig cobrowse CoBrowsingServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8743
      to_port     = 8743
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig cobrowse CoBrowsingServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8744
      to_port     = 8744
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig cobrowse CoBrowsingServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8161
      to_port     = 8161
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig activemq ThirdPartyServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 61616
      to_port     = 61616
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig activemq ThirdPartyServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8700
      to_port     = 8700
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "dig cobrowse ApplicationCluster"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "PostGres"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 1434
      to_port     = 1434
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "MSSQL"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5003
      to_port     = 5003
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5001
      to_port     = 5001
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5002
      to_port     = 5002
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "sips route TServer"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5070
      to_port     = 5070
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "SIP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5160
      to_port     = 5160
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "SIP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 5170
      to_port     = 5170
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "SIP"
    }
  }

  dynamic "ingress" {
    for_each = ["10.116.248.0/23","10.117.0.0/16","10.119.0.0/16","10.33.176.0/22","10.41.160.0/22","10.116.84.0/22","10.118.84.0/22"]
    content {
      from_port   = 8000
      to_port     = 9000
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
      description = "SIP RTP"
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

  #Egress
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
