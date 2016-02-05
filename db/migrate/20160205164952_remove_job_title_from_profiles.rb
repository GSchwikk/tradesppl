class RemoveJobTitleFromProfiles < ActiveRecord::Migration
  def change
  	remove_column :profiles, :job_title, :string
  end
end
