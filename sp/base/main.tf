
resource "azuread_service_principal" "aad_sp" {
  application_id        = var.application_id
  
}

resource "random_password" "aad_sp" {
  length                = 16
  special               = true
  override_special      = "_%@"
}

resource "azuread_service_principal_password" "aad_sp" {
  service_principal_id  = azuread_service_principal.aad_sp.id
  value                 = random_password.aad_sp.result
  end_date              = "2022-01-01T01:02:03Z"
}

resource "random_password" "password_2022" {
  length                = 16
  special               = true
  override_special      = "_%@"
}

resource "azuread_service_principal_password" "credential_2022" {
  service_principal_id  = azuread_service_principal.aad_sp.id
  value                 = random_password.password_2022.result
  end_date              = "2022-01-01T01:02:03Z"
}
