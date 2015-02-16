class CreateContratantes < ActiveRecord::Migration
  def change
    create_table :contratantes do |t|
      t.string :nome
      t.string :endereco
      t.string :email
      t.string :contato
      t.references :user, index: true

      t.timestamps
    end
  end
end
