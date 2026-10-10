variable "ivschat_rooms" {
  description = <<EOT
Map of ivschat_rooms, attributes below
Optional:
    - logging_configuration_identifiers
    - maximum_message_length
    - maximum_message_rate_per_second
    - name
    - region
    - tags
    - tags_all
    - message_review_handler (block):
        - fallback_result (optional)
        - uri (optional)
EOT

  type = map(object({
    logging_configuration_identifiers = optional(list(string))
    maximum_message_length            = optional(number)
    maximum_message_rate_per_second   = optional(number)
    name                              = optional(string)
    region                            = optional(string)
    tags                              = optional(map(string))
    tags_all                          = optional(map(string))
    message_review_handler = optional(object({
      fallback_result = optional(string)
      uri             = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ivschat_rooms : (
        v.maximum_message_length == null || (v.maximum_message_length >= 1 && v.maximum_message_length <= 500)
      )
    ])
    error_message = "must be between 1 and 500"
  }
  validation {
    condition = alltrue([
      for k, v in var.ivschat_rooms : (
        v.maximum_message_rate_per_second == null || (v.maximum_message_rate_per_second >= 1 && v.maximum_message_rate_per_second <= 100)
      )
    ])
    error_message = "must be between 1 and 100"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

