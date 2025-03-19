module "s3_tf" {
  source = "github.com/kalyanburramukku/terraform-modules/aws/s3"
  name   = var.name
}