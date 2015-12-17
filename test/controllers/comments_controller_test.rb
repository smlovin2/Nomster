require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create a comment" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)

    post :create, :place_id => place.id, :comment => {
      :message => 'Yum!',
      :rating => '5_stars',
    }

    assert_equal 1, place.comments.count
    assert_redirected_to place_path(place)
  end
end
