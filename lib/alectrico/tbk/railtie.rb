module Alectrico
  module Tbk
    class Railtie < ::Rails::Railtie
      initializer "alectrico-tbk.configure_rails_initialization" do |app|
      end
      rake_tasks do
        #Rails.root es el root de Rails en el 'hospedero' de la gema
        #oad "#{Gems.root}/alectrico-tbk/lib/tasks/alectrico/tbk_tasks.rake"
      end
    end
  end
end
~                                                                                     
~                                                                                     
~                                                                                     
~                                                                                     
~                                                                                     
~               
