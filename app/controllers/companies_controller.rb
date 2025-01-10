class CompaniesController < ApplicationController
    def create
        create_params = params.expect(company: [ :name, :description, :address ])
        puts create_params[:name]
        company = Company.create(
            name: create_params[:name],
            description: create_params[:description],
            address: create_params[:address],
        )
    render(json: company)
    end
end
