require "carrierwave"
require "carrierwave/cloutree/version"
require "carrierwave/storage/cloutree"

module Carrierwave::Uploader::Base
  add_config :cloutree_key
  add_config :cloutree_secret
  add_config :cloutree_host

  configure do |c|
    config.storage_engines[:cloutree] = 'Carrierwave::Storage::Cloutree'
  end
end
