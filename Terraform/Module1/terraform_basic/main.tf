terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
# Credentials only needs to be set if you do not have the GOOGLE_APPLICATION_CREDENTIALS set
<<<<<<< HEAD
#  credentials = $TF_VAR_GCP_KEY
=======
#  credentials = 
#  credentials = $DE_TERRAFORM_GCP
>>>>>>> 80ef311 (Starting with Terraform)
  project = "dezoomcampgcp"
  region  = "us-central1"
}



resource "google_storage_bucket" "data-lake-bucket" {
  name          = "dezoomcampgcp-bucket"
  location      = "US"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    #  type = "AbortIncompleteMultipartUpload"
    }
    condition {
      age = 1  // days
    }
  }

  force_destroy = true
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id = "dezoomcampgcp-query"
  project    = "dezoomcampgcp"
  location   = "US"
}