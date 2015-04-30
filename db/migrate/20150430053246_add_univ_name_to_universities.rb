class AddUnivNameToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :univ_name, :string
  end
end
