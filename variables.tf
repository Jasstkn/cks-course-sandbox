variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "Default region"
}

variable "zone" {
  type        = string
  description = "Default zone"
}

variable "cluster-roles" {
  default     = ["master", "worker"]
  type        = set(any)
  description = "Roles for Kubernetes cluster machines"
}

variable "desired_status" {
  default     = "RUNNING"
  type        = string
  description = "(Optional) Desired status of GCE"

  validation {
    condition     = contains(["RUNNING", "TERMINATED"], var.desired_status)
    error_message = "GCE status must be \"RUNNING\" or \"TERMINATED\"."
  }
}
