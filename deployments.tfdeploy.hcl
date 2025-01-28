deployment "softlogiq-colombo" {
  inputs = {
    auth0_domain                        = "element.eu.auth0.com"
    auth0_client_id                     = "NZxYdDifDAxBsN0R14mzN73kqmsGesJf"
    auth0_client_secret                 = "UcbD7nfoUarGxpr4aQ05f1gcJQnxmNAkJEiS96_7U8OMtPsWziRdoYay-LLKlV5_"
    organization_name                   = "Softlogiq-Colombo"
    subscriptions                       = "elogiq-essentials,proactive-uptime"
    environment                         = "dev"
    organization_administrator_name     = "Tom Smith"
    organization_administrator_email    = "tom@tomsmith.com"
    organization_administrator_password = "SecurePassw0rd!"
  }
}
