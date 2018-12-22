require 'test_helper'

class PackageRentedUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @package_rented_unit = package_rented_units(:one)
  end

  test "should get index" do
    get package_rented_units_url, as: :json
    assert_response :success
  end

  test "should create package_rented_unit" do
    assert_difference('PackageRentedUnit.count') do
      post package_rented_units_url, params: { package_rented_unit: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show package_rented_unit" do
    get package_rented_unit_url(@package_rented_unit), as: :json
    assert_response :success
  end

  test "should update package_rented_unit" do
    patch package_rented_unit_url(@package_rented_unit), params: { package_rented_unit: {  } }, as: :json
    assert_response 200
  end

  test "should destroy package_rented_unit" do
    assert_difference('PackageRentedUnit.count', -1) do
      delete package_rented_unit_url(@package_rented_unit), as: :json
    end

    assert_response 204
  end
end
