class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |n|
      n.string :title
      n.string :text
      n.string :author
    end
  end

end
