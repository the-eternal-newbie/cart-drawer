defmodule CartDrawerWeb.ErrorJSONTest do
  use CartDrawerWeb.ConnCase, async: true

  test "renders 404" do
    assert CartDrawerWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert CartDrawerWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
