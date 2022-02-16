class AddBeastReferenceToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :beast, index: true
  end
end
