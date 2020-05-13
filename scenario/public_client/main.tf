
module "app" {
  
  source      = "../../app/base"
  name        = var.name
  reply_urls  = [ var.redirect_uri ] 

}
module "sp" {
  
  source          = "../../sp/base"
  application_id  = module.app.application_id

}