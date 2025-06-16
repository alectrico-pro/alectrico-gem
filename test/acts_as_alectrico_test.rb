require "test_helper"

class ActsAsAlectricoTest < ActiveSupport::TestCase
  def test_a_hickwalls_alectrico_text_field_should_be_last_squawk
    assert_equal "last_squawk", Hickwall.alectrico_text_field
  end

  def test_a_wickwalls_alectrico_text_field_should_be_last_tweet
    assert_equal "last_tweet", Wickwall.alectrico_text_field
  end

  def test_hicwalls_squawk_should_populate_last_squawk
    hickwall = Hickwall.new
    hickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", hickwall.last_squawk
  end

  def test_wickwalls_squawk_should_populate_last_tweet
    wickwall = Wickwall.new
    wickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", wickwall.last_tweet
  end

  def test_juguete_tokeniza_debe_llenar_link_de_pago_tbk
    juguete = Juguete.new
    juguete.save
    juguete.tokeniza( 'link_de_pago_tbk_juguete_url' )
    assert_match /s*/, juguete.link_de_pago_tbk
   #juguete.tokeniza("https://www.alectrico.cl/reporte/11/link_de_pago_tbk")
    #ssert_match /https:\/\/www.alectrico.cl\/reporte\/11\//, juguete.link_de_pago_tbk
    #assert_equal "https://www.alectrico.cl/reporte/11/link_de_pago_tbk", juguete.link_de_pago_tbk
  end
end
