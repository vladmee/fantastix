class AccountGroupsController < ApplicationController
  before_action :set_account_group, only: [:show, :edit, :update, :destroy]

  # GET /account_groups
  # GET /account_groups.json
  def index
    @account_groups = AccountGroup.all
  end

  # GET /account_groups/1
  # GET /account_groups/1.json
  def show
  end

  # GET /account_groups/new
  def new
    @account_group = AccountGroup.new
  end

  # GET /account_groups/1/edit
  def edit
  end

  # POST /account_groups
  # POST /account_groups.json
  def create
    @account_group = AccountGroup.new(account_group_params)

    respond_to do |format|
      if @account_group.save
        format.html { redirect_to @account_group, notice: 'Account group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @account_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_groups/1
  # PATCH/PUT /account_groups/1.json
  def update
    respond_to do |format|
      if @account_group.update(account_group_params)
        format.html { redirect_to @account_group, notice: 'Account group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_groups/1
  # DELETE /account_groups/1.json
  def destroy
    @account_group.destroy
    respond_to do |format|
      format.html { redirect_to account_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_group
      @account_group = AccountGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_group_params
      params.require(:account_group).permit(:account_id, :group_id)
    end
end
