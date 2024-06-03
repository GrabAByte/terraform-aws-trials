provider aws {
  #profile                    = "default"
  #shared_credentials_files   = [".aws_credentials"]
  region                      = "eu-west-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  #sts_region                 = "eu-west-1"
  #endpoints {
  #  sts = "https://sts.eu-west-1.amazonaws.com"
  #}
}
