require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    # Спросим у пользователя, что нужно сделать и запишем его ответ (строку) в
    # переменную экземпляра класса Задача @text.
    puts 'Что надо сделать?'
    @text = STDIN.gets.chomp

    # Спросим у пользователя, до какого числа ему нужно выполнить задачу и
    # подскажем формат, в котором нужно вводить дату. А потом запишем его ответ
    # в локальную переменную input.
    puts 'К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, ' \
      'например 12.05.2003'
    input = STDIN.gets.chomp

    # Для того, чтобы из строки получить объект класса Date, с которым очень
    # удобно работать (например, можно вычислить, сколько осталось дней до
    # нужной даты), мы получим этот объект из строки с помощью метода класса
    # Date (статического метода).
    @due_date = Date.parse(input)
  end

  def to_strings
    deadline = "Крайний срок: #{@due_date.strftime('%Y.%m.%d')}"
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r"

    return [deadline, @text, time_string]

  end
end