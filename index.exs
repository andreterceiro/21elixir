defmodule Game do
    def execute do
        even_odd = IO.gets("Escolha par (1) ou ímpar (2): ")  |> String.trim_trailing

        if (even_odd != "1" && even_odd != "2") do
            IO.puts("Você deve escolher 1 ou 2")
        else
            human_number = IO.gets("Agora escolha o seu número: ") |> String.trim_trailing
            human_number = String.to_integer(human_number)

            random_number = :rand.uniform(10)

            sum = human_number + random_number 

            IO.puts("A soma é: #{sum}")
            if (even_odd == "1" && rem(sum, 2) == 0) || (even_odd == "2" && rem(sum, 2) == 1) do
                IO.puts("Você ganhou")
            else
                IO.puts("Você perdeu")
            end
        end
    end
end

Game.execute
