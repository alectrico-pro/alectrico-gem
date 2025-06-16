class CreateJuguetes < ActiveRecord::Migration[8.0]
  def change
    create_table :juguetes do |t|
      t.string :link_de_pago_tbk

      t.timestamps
    end
  end
end
