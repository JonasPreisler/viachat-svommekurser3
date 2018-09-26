require 'test_helper'

class SpeakerImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker_image = speaker_images(:one)
  end

  test "should get index" do
    get speaker_images_url
    assert_response :success
  end

  test "should get new" do
    get new_speaker_image_url
    assert_response :success
  end

  test "should create speaker_image" do
    assert_difference('SpeakerImage.count') do
      post speaker_images_url, params: { speaker_image: { image: @speaker_image.image, speaker_id: @speaker_image.speaker_id } }
    end

    assert_redirected_to speaker_image_url(SpeakerImage.last)
  end

  test "should show speaker_image" do
    get speaker_image_url(@speaker_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaker_image_url(@speaker_image)
    assert_response :success
  end

  test "should update speaker_image" do
    patch speaker_image_url(@speaker_image), params: { speaker_image: { image: @speaker_image.image, speaker_id: @speaker_image.speaker_id } }
    assert_redirected_to speaker_image_url(@speaker_image)
  end

  test "should destroy speaker_image" do
    assert_difference('SpeakerImage.count', -1) do
      delete speaker_image_url(@speaker_image)
    end

    assert_redirected_to speaker_images_url
  end
end
