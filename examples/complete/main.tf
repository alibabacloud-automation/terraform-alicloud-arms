resource "alicloud_arms_alert_contact" "default" {
  alert_contact_name = "example_value"
  email              = "example_value@aaa.com"
}

module "example" {
  source = "../.."
  contact_ids = [alicloud_arms_alert_contact.default.id]
  match_expressions = [{key="aliyun_arms_involvedObject_kind",value= "app",operator = "eq"}]
  create = true
  alert_contact_group_name = "tf-arms-contract-group-name"
  dispatch_rule_name = "tf-dispatch-rule-name"
  group_wait_time = 5
  group_interval = 15
  repeat_interval = 100
  notification_name = "tf-arms-notification"
}