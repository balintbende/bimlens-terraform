variable "region" {
  description = "This is the cloud hosting region where the cluster will be deployed."
}

variable "environment" {
  description = "The name of the environment, e.g. dev beta or prod"
}

variable "loki_username" {
  description = "The Loki username."
  type        = string
}

variable "loki_password" {
  description = "The Loki password."
  type        = string
}
variable "loki_address" {
  description = "The Loki address to post logs to."
  type        = string
}

variable "prometheus_username" {
  description = "The prometheus username."
  type        = string
}

variable "prometheus_password" {
  description = "The prometheus password."
  type        = string
}
variable "prometheus_address" {
  description = "The prometheus address to post logs to."
  type        = string
}