provider aws {
  profile                  = "default"
  shared_credentials_files = [".aws_credentials"]
  region                   = "eu-west-1"
  sts_region               = "eu-west-1"
  endpoints {
    sts = "https://sts.eu-west-1.amazonaws.com"
  }
}
