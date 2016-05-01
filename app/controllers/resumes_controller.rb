class ResumesController < ApplicationController

  before_action :authenticate_user!

  def index
    @resumes = current_user.resumes.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = current_user.resumes.new(resume_params)

    if @resume.save
      redirect_to resumes_path, notice: "Your file #{@resume.name} has been uploaded to the cloud. :)"
    else
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The file #{@resume.name} has been deleted."
  end

private
  def resume_params
    params.require(:resume).permit(:name, :attachment)
  end
end
