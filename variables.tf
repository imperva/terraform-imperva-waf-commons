variable "platform" {
  type        = string
  description = "The cloud platform to fetch information for"
  validation {
    condition = contains(
      local.options.global.cloud_platforms,
      var.platform
    )
    error_message = "Invalid cloud platform. Valid values are: ${join(", ", local.options.global.cloud_platforms)}"
  }
}

variable "api_endpoint" {
  type        = string
  description = "The API endpoint to fetch information from"
  default = "https://9nx2kisl5i.execute-api.us-east-1.amazonaws.com/ctt"
}