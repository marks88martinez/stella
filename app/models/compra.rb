class Compra < ApplicationRecord
  belongs_to :proveedor
  belongs_to :empleado
end
