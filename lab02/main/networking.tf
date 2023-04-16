module "network" {
  source = "../networking"
  vpc_cider = var.VPC_CIDER
  prefix = var.PREFIX
  public_subnet_1_cider = var.PUBLIC_SUBNET_1_CIDER
  public_subnet_2_cider = var.PUBLIC_SUBNET_2_CIDER
  private_subnet_1_cider = var.PRIVATE_SUBNET_1_CIDER
  private_subnet_2_cider = var.PRIVATE_SUBNET_2_CIDER
  availability_zone_1 = var.AVAILABILITY_ZONE_1
  availability_zone_2 = var.AVAILABILITY_ZONE_2
}