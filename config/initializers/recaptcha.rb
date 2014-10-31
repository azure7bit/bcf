# Recaptcha.configure do |config|
#   config.public_key  = '6LfmVvcSAAAAAIgnKNvh3dlmhQbT-FJbTkv93YTE'
#   config.private_key = '6LfmVvcSAAAAAOCOontVPlQkpLiuLcPnYjJ0CXBw'
#   # config.proxy = 'http://myproxy.com.au:8080'
# end

require 'net/http'

ENV['RECAPTCHA_PUBLIC_KEY'] = '6LddStMSAAAAAAeceA3q4U7083avx_c8tPEawrjO'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LddStMSAAAAAGW6iMr9OEVmzsveAyLUkXdvQlqf'

Recaptcha.configure do |config|
  config.public_key  = ENV['RECAPTCHA_PUBLIC_KEY']
  config.private_key = ENV['RECAPTCHA_PRIVATE_KEY']
  config.use_ssl_by_default = true
end