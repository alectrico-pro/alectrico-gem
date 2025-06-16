module Alectrico
  module ActsAsAlectrico
    extend ActiveSupport::Concern
    class_methods do
      #class_methods es un hook proporcionado por extend ActiveSupport::Concern
      #que permite definir métodos de clases on the fly
      #En este caso el método acts_as_alectrico se puede usar como hook al comienzo
      #de las clases que lo quieran usar
      #El método en sí define un atribute de clase llamado alectrico_text_field
      #El cual tendrá como valor por defecto lo que se suministre como argumento
      #Si se llama acts_as_alectrico sin argumentos se usará como default el valor
      #que tenga el valor por defecto que proporciona el método last_squack
      #Pero si en opciones se ya colocado alectrico_test_field entonces se usará 
      #el valor devuelo por el hash de optinoes con key alectrico_text_field
      def acts_as_alectrico(options = {} )
        cattr_accessor :alectrico_text_field, default: (options[:alectrico_text_field] || :last_squawk).to_s
      end
    end
    included do
      #Estos son métodos de instancia incorporados
      #Es equivalente a usar include Module. 
      #Pero al usar ActiveSupport::Concern es más fácil
      #Porque el do espera un módulo
      #En este caso el módulo sin nombre solo aporte el método squawk
      #Este método squawk solo estará accesible como método de instancia
      #por virtude del uso del hook inluded.
      def squawk( string )
        #escribe el valor string.to_squawk al atributo devuelto por self.class.alectrico_text_field
        #pero string.to_squawn ha sido sobrecargado (monkey patching en lib)
        #y class_alectrico_text_field responde de acuerdo a cómo se le llame        
        write_attribute(self.class.alectrico_text_field, string.to_squawk)
      end

      # prepara un link de pago tbk para cobrar
      # un servicio en la clase que lo llame
      # la clase de fijar el campo que lo va a
      # recibir eso se hace
      # colocando el hook acts_as_alectrico y colocando el nombre del
      # campo que guardará el link en la tabla de ActiveRecord
      # debe existir ese campo para que esto funcione
      # debe existe el campo
      # cuando el usario siga el link obtenido, se tomará el precio
      # de la visita del colaborador para generar el link que vaya
      # a transbank.cl
      # @param [String] url
      def tokeniza( url )
        write_attribute(self.class.alectrico_text_field, url.post_tokeniza )
      end
    end
  end
end
