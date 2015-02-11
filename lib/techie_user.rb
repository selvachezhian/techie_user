require 'techie_user/version'
require 'techie_user/services'
require 'techie_user/github'

module TechieUser

  ALLOWED_SOURCES = [:github, :stackoverflow, :rubygems]

  def self.included(receiver)
    receiver.send :include, Github
  end

end