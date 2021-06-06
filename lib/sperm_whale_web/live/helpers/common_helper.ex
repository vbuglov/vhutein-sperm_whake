defmodule SpermWhaleWeb.CommonHelper do
  @moduledoc false

  def with_index(list) when is_list(list) do
    list
    |> Enum.with_index(1)
    |> Enum.map(&put_elem/1)
  end

  defp put_elem({map, idx}) when is_map(map), do: Map.put(map, :idx, idx)
  defp put_elem({elem, idx}), do: %{elem: elem, idx: idx}
end
