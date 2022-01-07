require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i

#続きを書いていきましょう！！(ifで条件分岐)

if memo_type == 1 #1をクリックすると

   puts "拡張子を除いたファイル名を入力してください"
  
   file_name = gets.chomp
   
   puts "メモしたい内容を記入してください"
   puts "完了したらCtrl ＋ D を押します。"
   
   memo_type = STDIN.read
  
   CSV.open("#{file_name}.csv",'w') do |memo| #CSVファイルを作成編集する
  
   memo << ["#{memo_type}"]
  
   end
  
elsif memo_type == 2 #2をクリックすると

   puts "編集したいファイル名を入力してください。"
    
   file_name = gets.chomp 
    
   puts "編集内容を入力してください。"
   puts "終了後、Ctrl + D　を押します。"
    
   memo_type = STDIN.read
    
   CSV.open("#{file_name}.csv", "a") do |memo| #CSVファイルを編集する
        
      memo << ["#{memo_type}"]
        
   end

end