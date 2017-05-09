class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.string :tipo_documento
      t.string :numero_documento
      t.text :direccion
      t.string :telefono
      t.string :email
      t.date :fecha_ingreso

      t.timestamps
    end
  end
end
