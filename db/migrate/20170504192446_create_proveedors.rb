class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.text :descripcion
      t.string :ruc
      t.string :telefono
      t.text :direccion

      t.timestamps
    end
  end
end
