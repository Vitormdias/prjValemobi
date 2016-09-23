class Produto < ActiveRecord::Base
  validates_numericality_of :qtd, :only_integer => true
  validates_numericality_of :preco
  validates_presence_of :nome , :preco , :qtd , :tipo
end
