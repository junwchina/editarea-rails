require "editarea-rails/version"

module Editarea
  module Rails
    class Engine < ::Rails::Engine
      initializer 'editarea.load_static_assets' do |app|
        app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
      end
    end
  end
end
