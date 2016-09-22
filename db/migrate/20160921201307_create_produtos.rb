class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :cod
      t.text :nome
      t.decimal :preco
      t.integer :qtd
      t.text :tipo

      t.timestamps
    end

    create_table :carrinho do |t|
      t.integer :cod
      t.text :nome
      t.decimal :preco
      t.integer :qtd
      t.text :tipo

      t.timestamps
    end

  end
end
