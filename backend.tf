terraform {
  backend "gcs" {
    bucket = "jimmy"
    key    = "jimmy.tfstate"
    region = "us-central-1"
  }
}
