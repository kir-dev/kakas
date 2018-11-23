require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :redirect
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :redirect
  end

  test "should update event" do
    patch event_url(@event), params: { event: { content: @event.content, image: @event.image, intro: @event.intro, title: @event.title } }
    assert_redirected_to root_url
  end

  test "should destroy event" do
    assert_difference('Event.count', 0) do
      delete event_url(@event)
    end

    assert_redirected_to root_url
  end
end
