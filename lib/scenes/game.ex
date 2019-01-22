defmodule TypeToWin.Scene.Game do
  use Scenic.Scene
  alias Scenic.Graph
  alias Scenic.ViewPort
  import Scenic.Primitives, only: [text: 3]
  import Countries

  @graph Graph.build(font: :roboto, font_size: 36)
  @tile_size 32
  @frame_ms 60

  def init(_arg, opts) do
    {:ok, timer} = :timer.send_interval(@frame_ms, :frame)
    viewport = opts[:viewport]

    {:ok, %ViewPort.Status{size: {vp_width, vp_height}}} = ViewPort.info(viewport)

    center = {
      trunc(vp_width / 2),
      trunc(vp_height / 2)
    }

    state = %{
      viewport: viewport,
      graph: @graph,
      score: 0,
      current_level: 1,
      frame_count: 1,
      frame_timer: timer,
      levels: 1..195,
      countries: Countries.all,
      center: center,
      user_answer: ""
    }

    state.graph
    |> draw_score(state.score)
    |> draw_level(state.current_level)
    |> draw_coming_countries(state.countries, state.current_level)
    |> draw_answer(state.countries, state.current_level)
    |> draw_user_answer(state.user_answer)
    |> push_graph()

    {:ok, state}
  end

  def handle_info(:frame, %{frame_count: frame_count} = state) do
    state = go_to_next_level(state)
    state.graph
    |> draw_score(state.score)
    |> draw_level(state.current_level)
    |> draw_coming_countries(state.countries, state.current_level)
    |> draw_answer(state.countries, state.current_level)
    |> draw_user_answer(state.user_answer)
    |> push_graph()

    {:noreply, %{state | frame_count: frame_count + 1}}
  end

  def handle_input({:key, {user_input, :press, _}}, _context, state) do
    if Regex.match?(~r/[a-zA-Z]/, user_input) && String.length(user_input) == 1 do
      {:noreply, print_typer_word(state, user_input)}
    else
      {:noreply, state}
    end
  end

  def handle_input(_input, _context, state), do: {:noreply, state}

  defp draw_score(graph, score) do
    graph
    |> text("Score: #{score}", fill: :white, translate: {@tile_size, @tile_size})
  end

  defp go_to_next_level(state) do
    {_, capital} =  Enum.at(state.countries.all, state.current_level)
    if String.capitalize(capital) == String.capitalize(state.user_answer) do
      update_in(state, [:current_level], &(&1 + 1))
      |> update_score
      |> clean_user_answer
    else
      state
    end
  end

  defp update_score(state) do
    update_in(state, [:score], &(&1 + 1))
  end

  defp draw_level(graph, current_level) do
    graph
    |> text("Level: #{current_level}", fill: :white, translate: {@tile_size, 64})
  end

  defp clean_user_answer(state) do
    put_in(state, [:user_answer], "")
  end

  defp draw_answer(graph, countries, current_level) do
    {_country, capital} =  Enum.at(countries.all, current_level)
    graph
    |> text(String.replace(capital, ~r/[^\s]/, "_"), fill: :white, translate: {300, 380})
  end

  defp draw_coming_countries(graph, countries, current_level) do
    {country, _} = Enum.at(countries.all, current_level)
    country = Atom.to_string(country)
    graph
    |> text(String.replace(country,"_", " "), fill: :white, translate: {300, 300})
  end

  defp draw_user_answer(graph, answer) do
    graph
    |> text(answer, fill: :white, translate: {300,350})
  end

  defp print_typer_word(state, user_input) do
    update_in(state, [:user_answer], &(&1 <> String.downcase(user_input)))
  end
end