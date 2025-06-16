class String
  #Esto es una sobrecarga de la clase String que agrega 
  #un método de instancia to_squawk
  def to_squawk
    "squawk! #{self}".strip
  end
end
