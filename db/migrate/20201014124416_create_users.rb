class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |u|
      u.string :firstname
      u.string :lastname
      u.string :email
      u.string :news_articles
      u.string :password
    end
  end

end
