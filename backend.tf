terraform {
  backend "gcs" {
    bucket = "jimy"
    # key    = "jimmy.tfstate"
    # region = "us-central-1"
  }
}
