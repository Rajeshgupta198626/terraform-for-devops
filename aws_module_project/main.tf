# dev 

module "dev-app" {
    source = "./my_app_infra_module"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-014e30c8a36252ae5" 
    instance_count = 1
}

#prd
module "prd-app" {
    source = "./my_app_infra_module"
    my_env = "prd"
    instance_type = "t2.micro"
    ami = "ami-014e30c8a36252ae5" 
    instance_count = 2
}
#stg
module "stg-app" {
    source = "./my_app_infra_module"
    my_env = "stg"
    instance_type = "t2.small"
    ami = "ami-014e30c8a36252ae5" 
    instance_count = 3
}
output "dev_app_public_ips" {
  value = module.dev-app.ec2_instances_public_ips
  description = "Public IPs of the dev environment EC2 instances"
}

output "prd_app_public_ips" {
  value = module.prd-app.ec2_instances_public_ips
  description = "Public IPs of the prd environment EC2 instances"
}

output "stg_app_public_ips" {
  value = module.stg-app.ec2_instances_public_ips
  description = "Public IPs of the stg environment EC2 instances"
}