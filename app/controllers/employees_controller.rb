class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(
      :name, :furigana, :address, :phone,
      :email, :role, :job_exp, :started_date, :drive_licence,
      :pay_number, :licence1, :licence2, :licence3,
      :licence4, :licence5, :level_employee, :healthy_exam,
      :document, :document_date, :passport, :passport_date,
      photos: []
    )
  end
end
