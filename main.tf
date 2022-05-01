module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = "datamining-solution"
}
module "user" {
  source = "./modules/user"
  user = []
  name = "datamining"
}

resource "null_resource" "terraform-docs"{}