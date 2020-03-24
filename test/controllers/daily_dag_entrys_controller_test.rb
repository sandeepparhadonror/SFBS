require 'test_helper'

class DailyDagEntrysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daily_dag_entrys_index_url
    assert_response :success
  end

end
