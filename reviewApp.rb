# メソッドの定義
def post_review(a_posts)
  # 変数の定義
  post = {}
  puts 'ジャンルを入力してください:'
  post[:genre] = gets.chomp
  puts 'タイトルを入力してください：'
  post[:title] = gets.chomp
  puts '感想を入力してください：'
  post[:review] = gets.chomp
  line = '---------------------------'

  # レビューの描画
  puts "ジャンル : #{post[:genre]} \n#{line}"
  puts "タイトル : #{post[:title]} \n#{line}"
  puts "感想 : #{post[:review]} \n#{line}"

  a_posts << post

  a_posts
end

# レビューを読む
def read_review(a_posts)
  number = 0
  a_posts.each do |post|
    puts "[#{number}] : #{post[:title]}のレビュー"
    number += 1
  end

  puts "\n見たいレビューの番号を入力してください："
  input = gets.to_i

  if a_posts.length <= input
    puts '入力値が正しくありません'
    return
  end

  # レビューの取得
  post = a_posts[input]

  # レビューの描画
  line = '---------------------------'
  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"
end

def end_program
  # プログラムを終了する
  exit
end

def exception
  puts '入力された値が無効です'
end

posts = []

loop do
  # メニューの表示
  puts "レビュー数：#{posts.length}"
  puts '[0]レビューを書く'
  puts '[1]レビューを読む'
  puts '[2]アプリを終了する'
  input = gets.to_i

  if input == 0
    posts = post_review(posts)
  elsif input == 1
    read_review(posts)
  elsif input == 2
    end_program
  else
    exception
  end
end
