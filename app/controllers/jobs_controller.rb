class JobsController < ApplicationController
  def create
      create_params = params.expect(job: [ :title, :field, :seniority, :position, :key_skill, :employment_type, :education_level ])
      job = Job.create(
          title: create_params[:title],
          field: create_params[:field],
          seniority: create_params[:seniority],
          position: create_params[:position],
          key_skill: create_params[:key_skill],
          employment_type: create_params[:employment_type],
          education_level: create_params[:education_level]
      )
  render(json: job)
  end
end
