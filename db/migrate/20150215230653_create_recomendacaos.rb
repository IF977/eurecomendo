class CreateRecomendacaos < ActiveRecord::Migration
  def change
    create_table :recomendacaos do |t|
      t.string :servico
      t.string :prestador
      t.string :contato_prestador
      t.string :satisfacao
      t.references :user, index: true

      t.timestamps
    end
  end
end
