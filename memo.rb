class Memo < Post

  def read_from_console
    puts "Новая заметка (все, что вы пишите до строчки \"end\"):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop # Метод рор отрезает последнее слово, тк это слово "end"
  end

  def to_strings
    # Сгенерируем строку с датой создания заметки используя объект класса Time,
    # который у нас находится в переменной @created_at (смотрите конструктор
    # класса-родителя Post).
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n\r"

    # Возвращаем массив @text с добавление в начало (методом массива unshift)
    # строчки с датой создания заметки.
    return @text.unshift(time_string)
  end
end