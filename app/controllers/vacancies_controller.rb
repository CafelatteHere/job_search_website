class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.all
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    
    @vacancy = Vacancy.new(vacancy_params)
    @vacancy.save
    if @vacancy.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @vacancy = Vacancy.find(params[:id])
  end

  def update
    @vacancy = Vacancy.find(params[:id])
    @vacancy.update(vacancy_params)
    if @vacancy.update(vacancy_params)
      redirect_to root_path
    else 
      render 'edit'
    end
  end

  def destroy
    @vacancy = Vacancy.find(params[:id])
    @vacancy.destroy
    redirect_to root_path
  end

  def search
    @vacancies = Vacancy.search(params[:keyword])
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  private
  def vacancy_params
    params.require(:vacancy).permit(:id, :position, :company, :location, :salary, :description, :is_recruiter).merge(user_id: current_user.id)
  end
end
