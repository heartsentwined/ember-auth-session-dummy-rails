require 'rails'
require 'ember/auth/session/dummy/source'
require 'ember/auth/session/dummy/rails/version'
require 'ember/auth/session/dummy/rails/engine'

module Ember
  module Auth
    module Session
      module Dummy
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.session.dummy.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Session::Dummy::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
