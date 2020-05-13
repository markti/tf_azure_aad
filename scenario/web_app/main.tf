
module "app" {
  
  source              = "../../app/base"
  name                = var.name
  reply_urls          = var.reply_urls
  allow_implicit_flow = true

}
module "sp" {
  
  source          = "../../sp/base"
  application_id  = module.app.application_id

}