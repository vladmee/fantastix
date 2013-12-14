class AccountsGroupsController < ApplicationController
  before_action :set_accounts_group, only: [:show, :edit, :update, :destroy]

  # GET /accounts_groups
  # GET /accounts_groups.json
  def index
    @accounts_groups = AccountsGroup.all
  end

  # GET /accounts_groups/1
  # GET /accounts_groups/1.json
  def show
  end

  # GET /accounts_groups/new
  def new
    @accounts_group = AccountsGroup.new
  end

  # GET /accounts_groups/1/edit
  def edit
  end

  # POST /accounts_groups
  # POST /accounts_groups.json
  def create
    @accounts_group = AccountsGroup.new(accounts_group_params)

    respond_to do |format|
      if @accounts_group.save
        format.html { redirect_to @accounts_group, notice: 'Accounts group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accounts_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @accounts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts_groups/1
  # PATCH/PUT /accounts_groups/1.json
  def update
    respond_to do |format|
      if @accounts_group.update(accounts_group_params)
        format.html { redirect_to @accounts_group, notice: 'Accounts group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accounts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts_groups/1
  # DELETE /accounts_groups/1.json
  def destroy
    @accounts_group.destroy
    respond_to do |format|
      format.html { redirect_to accounts_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounts_group
      @accounts_group = AccountsGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounts_group_params
      params.require(:accounts_group).permit(:account_id, :group_id)
    end
end
