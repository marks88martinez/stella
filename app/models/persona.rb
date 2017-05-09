class Persona < ApplicationRecord
# Associations
  has_one :cliente
  has_one :empleado
  validates :nombre, :apellido, :numero_documento, :direccion, :telefono, presence: true



end
