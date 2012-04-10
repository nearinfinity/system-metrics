require 'rails/generators'

module SystemMetrics
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "Install System Metrics public assets"

      source_root File.expand_path("../../../../../public", __FILE__)

      def copy_css_files
        directory "stylesheets", "app/assets/stylesheets/system_metrics", :recursive => true
      end

      def copy_image_files
        directory "images", "app/assets/images/system_metrics", :recursive => true
      end

    end
  end
end
