defmodule Secondp do
  def fetcher do
    HTTPoison.start
    url = "https://jsonplaceholder.typicode.com/todos/"
      case HTTPoison.get(url) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          IO.puts body
          {:ok, %HTTPoison.Response{status_code: 404}} ->
            IO.puts "Not found :("
          {:error, %HTTPoison.Error{reason: reason}} ->
            IO.inspect reason
      end

      JSON.decode(result.body) |> elem(1)
    end
 def dispaly do
  newresult = fetcher()
  Enum.each([result], fn  -> IO.puts( result[title]) end)




 end

end
