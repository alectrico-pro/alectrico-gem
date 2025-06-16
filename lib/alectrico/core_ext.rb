require 'jwt'

class String
  
  #Esto es una sobrecarga de la clase String que agrega 
  #un método de instancia to_squawk
  
  def to_squawk
    "squawk! #{self}".strip
  end

  # 
  def post_tokeniza_v1( model_id )
    payload = { id: model_id }
    token   = JWT.encode(payload, nil, 'none')
    "#{self}#{token}".strip
  end
  
  #self es el id de un modelo
  def tokeniza( action_url )
    id = self.to_i
    payload = { id: id }
    token   = JWT.encode(payload, nil, 'none')
    Rails.application.routes.url_helpers.send( action_url.to_sym, token, :only_path => true )

  end

end
