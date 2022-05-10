variable "cluster-roles" {
  default     = ["master", "worker"]
  type        = set(any)
  description = "Roles for Kubernetes cluster machines"
}
