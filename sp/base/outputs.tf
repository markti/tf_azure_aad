
output "client_id"{
  value = azuread_service_principal.aad_sp.application_id
}
output "client_secret"{
  value = azuread_service_principal_password.credential_2022.value
}
output "object_id"{
  value = azuread_service_principal.aad_sp.object_id
}