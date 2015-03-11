class CreateJenkinsJobs < ActiveRecord::Migration

  def up
    create_table :jenkins_jobs do |t|
      t.integer  :project_id
      t.integer  :repository_id
      t.integer  :jenkins_setting_id
      t.string   :name
      t.integer  :latest_build_number
      t.datetime :latest_build_date
      t.integer  :latest_build_duration
      t.string   :state
      t.text     :health_report
      t.integer  :builds_to_keep, default: 10
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
    drop_table :jenkins_jobs
  end

end
