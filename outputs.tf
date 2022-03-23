output "this_arms_dispatch_rule" {
  description = "The dispatch rule ID of arms."
  value       = concat(alicloud_arms_dispatch_rule.arms_dispatch_rule.*.id, [""])[0]
}