class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :tally
      t.belongs_to :question
    end
  end
end
