terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

variable "webhook_token" {
  description = "Token for the pipeline's status webhook. Set via TF_VAR_webhook_token, never a default."
  type        = string
  sensitive   = true
}

variable "signing_key_id" {
  description = "Key ID used to sign outbound webhook payloads"
  type        = string
  default     = "AKIA3XQ7PZVK9RTLM2WD"
}

resource "local_file" "pipeline_config" {
  filename = "${path.module}/rendered/pipeline.env"
  content  = "WEBHOOK_TOKEN=${var.webhook_token}\n"
}

resource "local_file" "webhook_signing_config" {
  filename = "${path.module}/rendered/signing.env"
  content  = "SIGNING_KEY_ID=${var.signing_key_id}\n"
}

