terraform-alicloud-arms
=====================================================================

本 Module 用于在阿里云创建 [应用实时监控服务(ARMS)](https://help.aliyun.com/product/34364.html) 报警分组和规则.

本 Module 支持创建以下资源:

* [ARMS联系人分组(Arms_Alert_Contact_Group)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/arms_alert_contact_group)
* [ARMS报警规则(Arms_Dispatch_Rule)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/arms_dispatch_rule)

## 版本要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.131.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.131.0 |

## 用法

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