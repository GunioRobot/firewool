require 'rails'
require 'firewool'

# p "Railtie loaded"

begin
module Firewool
  class Railtie < Rails::Railtie
    config.to_prepare do
      # p "hook added"
      ApplicationController.send(:extend, Firewool::Hook)
    end
  end
end
rescue
p $!, $!.message
raise $!
end