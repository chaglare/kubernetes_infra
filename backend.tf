terraform {
  backend "s3" {
    bucket = "kubernetes.caglarcavdarstate.com"
    key    = "terraformstate"
    region = "us-west-2"
   }
}
