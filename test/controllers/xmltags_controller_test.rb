require 'test_helper'

class XmltagsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @xmltag = xmltags(:one)
  end

  test "should create xmltag" do
    assert_difference('Xmltag.count') do
      post :create, xmltag: { file: @xmltag.xmlForDynamicTags }
    end
    assert_redirected_to xmltag_path(assigns(:xmltag))
  end
end
