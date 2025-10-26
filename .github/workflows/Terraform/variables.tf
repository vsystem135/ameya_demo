variable "bucket_name" {
  description = "Globally-unique S3 bucket name"
  type        = string
  default     = "v3system-secure-bucket-${random_id.suffix.hex}"
}

variable "region" {
  description = "AWS region to create the bucket in"
  type        = string
  default     = "ap-south-1"
}

variable "force_destroy" {
  description = "If true, destroy will delete both bucket and objects. Set to false for safety."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    CreatedBy = "github-actions"
    Project   = "v3system"
  }
}
