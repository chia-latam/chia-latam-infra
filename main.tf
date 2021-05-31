module "app" {
  source = "./app/do"
  
  domain = var.domain

  app_instance = var.app_instance
  app_size = var.app_size
  app_name = var.app_name
  app_environment = var.app_environment
  
  app_src_repo = var.app_src_repo
  app_src_branch = var.app_src_branch

  app_env_from_mail = var.app_env_from_mail
  app_env_from_name = var.app_env_from_name
  app_env_to_email = var.app_env_to_email
  app_env_sendgrid_api = var.app_env_sendgrid_api
  #size = var.size
}

module "dns" {
  source = "./dns/do"
  ip_server = var.ip
  domain = var.domain
  //ip_server = module.servers.ip 
}