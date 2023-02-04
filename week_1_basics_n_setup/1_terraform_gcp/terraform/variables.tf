# The code below is from https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/week_1_basics_n_setup/1_terraform_gcp
# The comments are added by the author

locals {
  data_lake_bucket = "mlopsdeclass-sw"  # Write a name for the GCS bucket to be created
}

variable "project" {
  description = "Your GCP Project ID"   # Don't write anything here: it will be prompted during installation
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "us-west1"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "trips_data_all"
}
