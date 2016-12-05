class TaskksController < ApplicationController
  before_action :set_taskk, only: [:show, :edit, :update, :destroy]


  # GET /taskks
  # GET /taskks.json
  def index

    #jarp: two groups of tasks for index view should be called here

    # Using the pending scope to get all the pending tasks that haven't been completed
    @pending_tasks = Taskk.pending

    # Using the completed scope to get all the completed tasks
    # jarp: you can use the SQL limit directive with this method. Best way to limit records
    @completed_tasks = Taskk.completed.limit(5)
  end

  # GET /taskks/1
  # GET /taskks/1.json
  def show
  end

  # GET /taskks/new
  def new
    @taskk = Taskk.new
  end

  # GET /taskks/1/edit
  def edit
  end

  # POST /taskks
  # POST /taskks.json
  def create
    @taskk = Taskk.new(taskk_params)

    respond_to do |format|
      if @taskk.save
        format.html { redirect_to @taskk, notice: 'Taskk was successfully created.' }
        format.json { render :show, status: :created, location: @taskk }
      else
        format.html { render :new }
        format.json { render json: @taskk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskks/1
  # PATCH/PUT /taskks/1.json
  def update
    respond_to do |format|
      if @taskk.update(taskk_params)
        format.html { redirect_to @taskk, notice: 'Taskk was successfully updated.' }
        format.json { render :show, status: :ok, location: @taskk }
      else
        format.html { render :edit }
        format.json { render json: @taskk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskks/1
  # DELETE /taskks/1.json
  def destroy
    @taskk.destroy
    respond_to do |format|
      format.html { redirect_to taskks_url, notice: 'Taskk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskk
      @taskk = Taskk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskk_params
      params.require(:taskk).permit(:title, :description, :priority, :due_date, :is_completed_toggle, :task_list_id)
    end
end
