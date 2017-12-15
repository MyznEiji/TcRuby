class Review
  @@review_count = 0
  def self.get_review_count
    @@review_count
  end

  def initialize
    puts 'タイトルを入力してください'
    @title = gets.chomp
    puts 'ジャンルを入力してください'
    @genre = gets.chomp
    puts '感想を入力してください'
    @impression = gets.chomp
    @@review_count += 1
  end

  def show_review
    line = '--------------------------'
    puts "ジャンル : #{@genre}\n#{line}\n"
    puts "タイトル : #{@title}\n#{line}\n"
    puts "感想 :\n#{@impression}\n#{line}\n"
  end
end

loop do
  puts "書いたレビューの数：#{Review.get_review_count}"
  puts '[0]レビューを書く'
  puts '[1]アプリを終了'
  input = gets.to_i

  if input == 0
    review = Review.new.show_review
  elsif input == 1
    exit
  else
    puts "入力値が正しくありません"
  end
end
