require 'rest_client'

require 'techie_user/version'
require 'techie_user/global_config'
require 'techie_user/services'
require 'techie_user/github'

module TechieUser

  def self.included(receiver)
    receiver.send :include, Github
  end

end