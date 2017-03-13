class ParticipantFlowsController < ApplicationController
  before_action :set_participant_flow, only: [:show, :edit, :update, :destroy]

  # GET /participant_flows
  # GET /participant_flows.json
  def index
    @participant_flows = ParticipantFlow.all
  end

  # GET /participant_flows/1
  # GET /participant_flows/1.json
  def show
  end

  # GET /participant_flows/new
  def new
    @participant_flow = ParticipantFlow.new
  end

  # GET /participant_flows/1/edit
  def edit
  end

  # POST /participant_flows
  # POST /participant_flows.json
  def create
    @participant_flow = ParticipantFlow.new(participant_flow_params)

    respond_to do |format|
      if @participant_flow.save
        format.html { redirect_to @participant_flow, notice: 'Participant flow was successfully created.' }
        format.json { render :show, status: :created, location: @participant_flow }
      else
        format.html { render :new }
        format.json { render json: @participant_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participant_flows/1
  # PATCH/PUT /participant_flows/1.json
  def update
    respond_to do |format|
      if @participant_flow.update(participant_flow_params)
        format.html { redirect_to @participant_flow, notice: 'Participant flow was successfully updated.' }
        format.json { render :show, status: :ok, location: @participant_flow }
      else
        format.html { render :edit }
        format.json { render json: @participant_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participant_flows/1
  # DELETE /participant_flows/1.json
  def destroy
    @participant_flow.destroy
    respond_to do |format|
      format.html { redirect_to participant_flows_url, notice: 'Participant flow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_flow
      @participant_flow = ParticipantFlow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_flow_params
      params.fetch(:participant_flow, {})
    end
end
