class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
      t.decimal :sueldo
      t.string :acceso
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
