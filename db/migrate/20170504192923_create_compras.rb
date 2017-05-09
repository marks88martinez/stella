class CreateCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :compras do |t|
      t.date :fecha_ingreso
      t.string :forma_de_pago
      t.decimal :monto_total
      t.references :proveedor, foreign_key: true
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
