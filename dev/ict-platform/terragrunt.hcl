# include {
#  path = find_in_parent_folders()
# }

terraform {
  #source = "git::ssh:git@bitbucket.org/beetobit/terraform-aws-cloudfront?ref=develop"
  source = "../../../terraform-aws-cloudfront"
}

inputs = {
  region = "eu-west-1"
  namespace = "ict-platform"
  aliases = ["api.dev.med-gold.eu"]
  hosted_zone_name = "dev.med-gold.eu."
  record_name = "api.dev.med-gold.eu"
  record_type = "A"
  viewer_minimum_protocol_version = "TLSv1"
  enables = "true"
  name = "cf-logs"
  attributes = ["policy"]
  origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
  origins = [
     {
         domain_name = "y70rhhsy0h.execute-api.eu-west-1.amazonaws.com"
         origin_id   = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
         origin_path = "/dev"
         custom_origin_config = [{
            http_port = 80
            https_port = 443
            origin_protocol_policy = "https-only"
            origin_ssl_protocols = ["TLSv1.2"]
         }]
     },
     {
         domain_name = "m8jlv8c455.execute-api.eu-west-1.amazonaws.com"
         origin_id   = "dev-mgd-ict-platform-horta-api"
         origin_path = "/dev"
         custom_origin_config = [{
            http_port = 80
            https_port = 443
            origin_protocol_policy = "https-only"
            origin_ssl_protocols = ["TLSv1.2"]
         }]
     },
     {
         domain_name = "qqorrf4x2e.execute-api.eu-west-1.amazonaws.com"
         origin_id   = "dev-mgd-ict-platform-pbdm-api"
         origin_path = "/dev"
         custom_origin_config = [{
            http_port = 80
            https_port = 443
            origin_protocol_policy = "https-only"
            origin_ssl_protocols = ["TLSv1.2"]
         }]
     }
    ]
  acm_certificate_arn = "arn:aws:acm:us-east-1:284176251738:certificate/f345c17f-d1d4-43c4-87d8-51ba9cb8b5f7"

  cache_behavior = [
     {
      allowed_methods = [ "GET", "HEAD","OPTIONS"]
      path_pattern = "/datasets"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/era5/wfs"
      cached_methods = ["GET", "HEAD","OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/agmerra/wfs"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/ecmwf/wfs"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/e-obs/wfs"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/PTHRES/wfs"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
      {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/AgERA5/wfs"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
          {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/era5/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/agmerra/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/ecmwf/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/e-obs/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/PTHRES/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
      {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/AgERA5/info"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
  
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/horta"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/security/token"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "Custom-y70rhhsy0h.execute-api.eu-west-1.amazonaws.com/dev"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]
     },
      {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/ecmwf/workflow/horta"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-horta-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/horta/request"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-horta-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/agmerra/workflow/pbdm"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-pbdm-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]    
     },
    {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/pbdm/request"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-pbdm-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]    
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/AgERA5/workflow/pbdm"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-pbdm-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]    
     },
     {
      allowed_methods = ["GET", "HEAD", "OPTIONS"]
      path_pattern = "/dataset/eurocordex-noa/workflow/pbdm"
      cached_methods = ["GET", "HEAD", "OPTIONS"]
      target_origin_id = "dev-mgd-ict-platform-pbdm-api"
      viewer_protocol_policy = "redirect-to-https"
      forwarded_values = [{
        query_string = "true"
        headers = ["Authorization"]
        cookies = [{
          forward = "none"
        }]
      }]    
     }
     ]
}
