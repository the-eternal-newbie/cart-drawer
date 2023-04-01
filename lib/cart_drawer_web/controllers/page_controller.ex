defmodule CartDrawerWeb.PageController do
  use CartDrawerWeb, :controller

  @items [
    %{
      thumbnail:
        "https://www.darphin.fr/media/images/products/360x360/da_sku_DCKJ01_151029_360x360_0.jpg",
      name: "Intral Inner Youth Sérum Essentiel",
      price: 40,
      size: "15ml",
      qty: 2
    },
    %{
      thumbnail:
        "https://www.darphin.fr/media/images/products/360x360/da_sku_DAK001_131132_360x360_0.jpg",
      name: "STIMULSKIN PLUS - SÉRUM RÉGÉNÉRANT ABSOLU",
      price: 265,
      size: "15ml",
      qty: 1
    },
    %{
      thumbnail:
        "https://www.darphin.fr/media/images/products/540x540/da_sku_DC6601_135484_540x540_0.jpg",
      name: "HYDRASKIN LIGHT - GEL CRÈME HYDRATATION CONTINUE",
      price: 49,
      size: "15ml",
      qty: 3
    }
  ]

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false, items: @items)
  end
end
