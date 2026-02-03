terraform {
  required_version = ">= 1.1.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.2"
    }
  }
}

variable "message" {
  type        = string
  description = "A message included in triggers to trace the run."
  default     = "run-task smoke"
}

locals {
  now_rfc3339 = timestamp()
}

resource "null_resource" "force_apply" {
  triggers = {
    always  = local.now_rfc3339
    message = var.message
  }
}

output "tfe_smoke_timestamp" {
  description = "Timestamp that forces a change to trigger the post-apply Run Task."
  value       = local.now_rfc3339
}

