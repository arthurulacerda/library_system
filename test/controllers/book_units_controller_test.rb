require 'test_helper'

class BookUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_unit = book_units(:one)
  end

  test "should get index" do
    get book_units_url
    assert_response :success
  end

  test "should get new" do
    get new_book_unit_url
    assert_response :success
  end

  test "should create book_unit" do
    assert_difference('BookUnit.count') do
      post book_units_url, params: { book_unit: { available: @book_unit.available, book_id: @book_unit.book_id, condition: @book_unit.condition, edition: @book_unit.edition } }
    end

    assert_redirected_to book_unit_url(BookUnit.last)
  end

  test "should show book_unit" do
    get book_unit_url(@book_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_unit_url(@book_unit)
    assert_response :success
  end

  test "should update book_unit" do
    patch book_unit_url(@book_unit), params: { book_unit: { available: @book_unit.available, book_id: @book_unit.book_id, condition: @book_unit.condition, edition: @book_unit.edition } }
    assert_redirected_to book_unit_url(@book_unit)
  end

  test "should destroy book_unit" do
    assert_difference('BookUnit.count', -1) do
      delete book_unit_url(@book_unit)
    end

    assert_redirected_to book_units_url
  end
end
