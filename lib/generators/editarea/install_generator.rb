require 'rails/generators'

module Editarea
  class InstallGenerator < ::Rails::Generators::Base
    desc "Copy static files and add js to application.js"
    source_root File.expand_path('../templates', __FILE__)

    def add_js 
      js_manifest = 'app/assets/javascripts/application.js'

      if File.exist?(js_manifest)
        insert_into_file js_manifest, "//= require edit_area_full\n", :after => "jquery_ujs\n"
      else
        copy_file "application.js", js_manifest
      end

      css_manifest = 'app/assets/stylesheets/application.css'
    end


    def copy_assets 
      directory File.expand_path("../../../../vendor/assets", __FILE__), "public/assets"
    end
  end
end
