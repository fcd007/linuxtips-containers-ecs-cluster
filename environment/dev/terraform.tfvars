#### General configs ####

projetct_name = "ecs-cluster"

region = "us-east-2"

#### SSM VPC ####

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_private_subnet_1a = "/linuxtips-vpc/vpc/private_subnet_1a"

ssm_private_subnet_1b = "/linuxtips-vpc/vpc/private_subnet_1b"

ssm_private_subnet_1c = "/linuxtips-vpc/vpc/private_subnet_1c"

ssm_public_subnet_1a = "/linuxtips-vpc/vpc/public_subnet_1a"

ssm_public_subnet_1b = "/linuxtips-vpc/vpc/public_subnet_1b"

ssm_public_subnet_1c = "/linuxtips-vpc/vpc/public_subnet_1c"

#### Load Balancer ####
load_balancer_internal = "false"
load_balancer_type     = "application"