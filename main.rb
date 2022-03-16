require './item'
require './store'
require './creation'

class Main
  def initialize
    @items = Item.new('12 / 12 / 22')
  end

  def run
    puts '*************CATALOGUE OF MY THINGS************'
    puts '             =======================          '
    puts 'Welcome to Catalogue of thi!'
    loop do
      menu
      option = gets.chomp
      break if option == '14'

      list(option)
    end

    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number', '1 - List all books', '2 - List all music albums',
         '3 - List all movies', '4 - List all games', '5 - List all genre (eg.: Comedy, Thriller)',
         '6 - List all labels (eg.: Gift, New)', '7 - List all authors (e.g. Stephen King)',
         "8 - List all sources (e.g. 'From a friend', 'Online shop')", '9 - List all labes',
         '10 - Add a book', '11 - Add a music album', '12 - Add a movie', '13 - Add a game',
         '14 - Exit'
  end

  def list(num)
    case num.to_i
    when 1
      puts '1 your methods'
    when 2
      puts '2 your methods'
    when 3
      puts '3 your methods'
    when 4
      puts '4 your methods'
    else
      second_list(num)
    end
  end

  def second_list(num)
    case num.to_i
    when 5
      puts '5 your methods'
    when 6
      puts '6 your methods'
    when 7
      puts '7 your methods'
    when 8
      puts '8 your methods'
    else
      third_list(num)
    end
  end

  def third_list(num)
    case num.to_i
    when 9
      puts '9 your methods'
    when 10
      puts '10 your methods'
    when 11
      puts '11 your methods'
    when 12
      puts '12 your methods'
    when 13
      puts '13 your methods'
    end
  end
end

execute_app = Main.new
execute_app.run
