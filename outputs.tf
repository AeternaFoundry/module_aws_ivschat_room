output "ivschat_rooms_id" {
  description = "Map of id values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ivschat_rooms_arn" {
  description = "Map of arn values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ivschat_rooms_logging_configuration_identifiers" {
  description = "Map of logging_configuration_identifiers values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.logging_configuration_identifiers if v.logging_configuration_identifiers != null && length(v.logging_configuration_identifiers) > 0 }
}
output "ivschat_rooms_maximum_message_length" {
  description = "Map of maximum_message_length values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.maximum_message_length if v.maximum_message_length != null }
}
output "ivschat_rooms_maximum_message_rate_per_second" {
  description = "Map of maximum_message_rate_per_second values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.maximum_message_rate_per_second if v.maximum_message_rate_per_second != null }
}
output "ivschat_rooms_message_review_handler" {
  description = "Map of message_review_handler values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => one(v.message_review_handler) if v.message_review_handler != null && length(v.message_review_handler) > 0 }
}
output "ivschat_rooms_name" {
  description = "Map of name values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ivschat_rooms_region" {
  description = "Map of region values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ivschat_rooms_tags" {
  description = "Map of tags values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ivschat_rooms_tags_all" {
  description = "Map of tags_all values across all ivschat_rooms, keyed the same as var.ivschat_rooms"
  value       = { for k, v in aws_ivschat_room.ivschat_rooms : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

