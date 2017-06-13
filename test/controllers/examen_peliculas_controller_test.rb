require 'test_helper'

class ExamenPeliculasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get examen_peliculas_index_url
    assert_response :success
  end

end
