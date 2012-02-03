require 'test_helper'

class EventEntriesControllerTest < ActionController::TestCase
  setup do
    @event_entry = event_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_entry" do
    assert_difference('EventEntry.count') do
      post :create, :event_entry => @event_entry.attributes
    end

    assert_redirected_to event_entry_path(assigns(:event_entry))
  end

  test "should show event_entry" do
    get :show, :id => @event_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @event_entry.to_param
    assert_response :success
  end

  test "should update event_entry" do
    put :update, :id => @event_entry.to_param, :event_entry => @event_entry.attributes
    assert_redirected_to event_entry_path(assigns(:event_entry))
  end

  test "should destroy event_entry" do
    assert_difference('EventEntry.count', -1) do
      delete :destroy, :id => @event_entry.to_param
    end

    assert_redirected_to event_entries_path
  end
end
