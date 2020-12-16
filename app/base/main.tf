resource "azuread_application" "aad_app" {
  name                        = var.name
  homepage                    = var.homepage
  identifier_uris             = var.identifier_uris
  reply_urls                  = var.reply_urls
  available_to_other_tenants  = var.available_to_other_tenants
  oauth2_allow_implicit_flow  = var.allow_implicit_flow
}