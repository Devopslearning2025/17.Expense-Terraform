data "aws_ssm_parameter" "bation_id" {
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}