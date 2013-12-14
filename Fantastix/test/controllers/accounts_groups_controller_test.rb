require 'test_helper'

class AccountsGroupsControllerTest < ActionController::TestCase
  setup do
    @accounts_group = accounts_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounts_group" do
    assert_difference('AccountsGroup.count') do
      post :create, accounts_group: { account_id: @accounts_group.account_id, group_id: @accounts_group.group_id }
    end

    assert_redirected_to accounts_group_path(assigns(:accounts_group))
  end

  test "should show accounts_group" do
    get :show, id: @accounts_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounts_group
    assert_response :success
  end

  test "should update accounts_group" do
    patch :update, id: @accounts_group, accounts_group: { account_id: @accounts_group.account_id, group_id: @accounts_group.group_id }
    assert_redirected_to accounts_group_path(assigns(:accounts_group))
  end

  test "should destroy accounts_group" do
    assert_difference('AccountsGroup.count', -1) do
      delete :destroy, id: @accounts_group
    end

    assert_redirected_to accounts_groups_path
  end
end
