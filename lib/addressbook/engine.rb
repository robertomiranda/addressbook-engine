module Addressbook
  class Engine < ::Rails::Engine
    isolate_namespace Addressbook

    config.after_initialize do |app|
      app.routes.prepend do
        mount Addressbook::Engine, at: "/addressbook"
      end
    end
  end
end
