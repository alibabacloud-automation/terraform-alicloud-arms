terraform-alicloud-arms
=====================================================================

本 Module 用于在阿里云创建 [应用实时监控服务(ARMS)](https://help.aliyun.com/product/34364.html) 报警分组和规则.

## 用法

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aarms&spm=docs.m.terraform-alicloud-modules.arms" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
resource "alicloud_arms_alert_contact" "default" {
  alert_contact_name = "example_value"
  email              = "example_value@aaa.com"
}

module "example" {
  source            = "terraform-alicloud-modules/arms/alicloud"
  contact_ids = [alicloud_arms_alert_contact.default.id]
  match_expressions = [{key="aliyun_arms_involvedObject_kind",value= "app",operator = "eq"}]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.237.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.237.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_arms_alert_contact_group.arms_alert_contact_group](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/arms_alert_contact_group) | resource |
| [alicloud_arms_dispatch_rule.arms_dispatch_rule](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/arms_dispatch_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_contact_group_name"></a> [alert\_contact\_group\_name](#input\_alert\_contact\_group\_name) | The name of arms contract group. | `string` | `null` | no |
| <a name="input_contact_ids"></a> [contact\_ids](#input\_contact\_ids) | The ids of arms contract. | `list(string)` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Whether to create resources in module. | `bool` | `false` | no |
| <a name="input_dispatch_rule_name"></a> [dispatch\_rule\_name](#input\_dispatch\_rule\_name) | The rule name of dispatch. | `string` | `null` | no |
| <a name="input_dispatch_type"></a> [dispatch\_type](#input\_dispatch\_type) | The type of dispatch. | `string` | `"CREATE_ALERT"` | no |
| <a name="input_group_interval"></a> [group\_interval](#input\_group\_interval) | The interval time of arms contract group. | `number` | `null` | no |
| <a name="input_group_wait_time"></a> [group\_wait\_time](#input\_group\_wait\_time) | The waiting time of arms contract group. | `number` | `null` | no |
| <a name="input_grouping_fields"></a> [grouping\_fields](#input\_grouping\_fields) | The files of arms contract group. | `list(string)` | <pre>[<br>  "alertname"<br>]</pre> | no |
| <a name="input_match_expressions"></a> [match\_expressions](#input\_match\_expressions) | The lable of match expresoins. | <pre>list(object({<br>    key      = string<br>    value    = string<br>    operator = string<br>  }))</pre> | n/a | yes |
| <a name="input_notification_name"></a> [notification\_name](#input\_notification\_name) | The name of arms notification. | `string` | `null` | no |
| <a name="input_notify_channels"></a> [notify\_channels](#input\_notify\_channels) | The name of arms notification. | `list(string)` | <pre>[<br>  "dingTalk",<br>  "wechat"<br>]</pre> | no |
| <a name="input_notify_end_time"></a> [notify\_end\_time](#input\_notify\_end\_time) | The end time of arms notification. | `string` | `null` | no |
| <a name="input_notify_start_time"></a> [notify\_start\_time](#input\_notify\_start\_time) | The start time of arms notification. | `string` | `null` | no |
| <a name="input_repeat_interval"></a> [repeat\_interval](#input\_repeat\_interval) | The repeat interval time of arms contract group. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_arms_dispatch_rule"></a> [this\_arms\_dispatch\_rule](#output\_this\_arms\_dispatch\_rule) | The dispatch rule ID of arms. |
<!-- END_TF_DOCS -->

提交问题
------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)