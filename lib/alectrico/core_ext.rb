require 'base64'
class String
  
  #Esto es una sobrecarga de la clase String que agrega 
  #un método de instancia to_squawk
  
  def to_squawk
    "squawk! #{self}".strip
  end
  
  #self es el id de un modelo
  def tokeniza( action_url, host )
    puts "en tokeniza de String"
    puts "action_url: "
    puts action_url
    id = self.to_i
    puts "id: "
    puts id
    token   = Base64::encode64( id.to_s )
    begin
      Rails.application.routes.url_helpers.send( action_url.to_sym, token, :only_path => false, :host => host )
    rescue NoMethodError => e
      puts "Hay un error, #{action_url} no se puede usar en su modelo"
      puts "Debe usar este hook en su modelo:"
      puts "acts_as_alectrico alectrico_text_field: #{action_url.to_sym}"
      puts "O usar otro argumento en tokeniza"
      nil
    end
  end

end
