defmodule SpermWhaleWeb.CommonHelper do
  @moduledoc false

  def with_index(list) when is_list(list) do
    list
    |> Enum.with_index(1)
    |> Enum.map(&put_elem/1)
  end

  defp put_elem({map, idx}) when is_map(map), do: Map.put(map, :idx, idx)
  defp put_elem({elem, idx}), do: %{elem: elem, idx: idx}

  def add_class_if_exist(nil), do: ""
  def add_class_if_exist(class), do: class

  def add_optional(assigns, list), do: Enum.reduce(list, assigns, &Map.put_new(&2, &1, nil))
end
