module "bastiojn" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t3.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.bation_id.value]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}