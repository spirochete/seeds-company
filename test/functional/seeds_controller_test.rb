require 'test_helper'

class SeedsControllerTest < ActionController::TestCase
  setup do
    @seed = seeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seed" do
    assert_difference('Seed.count') do
      post :create, seed: { catalog_number: @seed.catalog_number, common_name: @seed.common_name, date_acquired: @seed.date_acquired, days_to_maturity: @seed.days_to_maturity, genus: @seed.genus, germination: @seed.germination, notes: @seed.notes, organic: @seed.organic, origin: @seed.origin, seed_type: @seed.seed_type, species: @seed.species, sub_species: @seed.sub_species, variety: @seed.variety }
    end

    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should show seed" do
    get :show, id: @seed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seed
    assert_response :success
  end

  test "should update seed" do
    put :update, id: @seed, seed: { catalog_number: @seed.catalog_number, common_name: @seed.common_name, date_acquired: @seed.date_acquired, days_to_maturity: @seed.days_to_maturity, genus: @seed.genus, germination: @seed.germination, notes: @seed.notes, organic: @seed.organic, origin: @seed.origin, seed_type: @seed.seed_type, species: @seed.species, sub_species: @seed.sub_species, variety: @seed.variety }
    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should destroy seed" do
    assert_difference('Seed.count', -1) do
      delete :destroy, id: @seed
    end

    assert_redirected_to seeds_path
  end
end
