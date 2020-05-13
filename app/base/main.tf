resource "azuread_application" "aad_app" {
  name                        = var.name
  homepage                    = var.homepage
  identifier_uris             = var.identifier_uris
  reply_urls                  = var.reply_urls
  available_to_other_tenants  = var.available_to_other_tenants
  oauth2_allow_implicit_flow  = var.allow_implicit_flow
}

resource "random_password" "aad_app" {
  length                = 16
  special               = true
  override_special      = "_%@"
}

resource "azuread_application_password" "aad_app" {
  application_object_id = azuread_application.aad_app.object_id
  value                 = random_password.aad_app.result
  end_date              = "2021-01-01T01:02:03Z"
}