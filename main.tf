module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = "datamining-solution"
}
module "user" {
  source = "./modules/user"
  user = []
  name = "datamining"
}

<<<<<<< HEAD
resource "null_resource" "terraform-docs"{}
=======
  resource "null_resource" "terraform-docs"{
}
>>>>>>> d52a1c1d8bf29d511853b528ea9eba970342427f
