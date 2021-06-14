defmodule SpermWhaleWeb.CommonHelper do
  @moduledoc false

  def with_index(list) when is_list(list) do
    list
    |> Enum.with_index(1)
    |> Enum.map(&put_elem/1)
  end

  defp put_elem({map, idx}) when is_map(map), do: Map.put(map, :idx, idx)
  defp put_elem({elem, idx}), do: %{elem: elem, idx: idx}

  def random_string(length) do
    :crypto.strong_rand_bytes(length) |> Base.url_encode64() |> binary_part(0, length)
  end

  def random_key() do
    random_string(6)
  end
end
