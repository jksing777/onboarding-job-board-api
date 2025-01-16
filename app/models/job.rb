class Job < ApplicationRecord
  belongs_to :company, foreign_key: "companies_id", class_name: "Company"
end
