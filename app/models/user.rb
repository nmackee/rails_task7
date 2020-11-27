class User < ApplicationRecord
  
  def disp_name
    if age > 19
      "#{name}さん"
    elsif age > 10
      "#{name}君"
    elsif age > 0
      "#{name}ちゃん"
    else
      "不正な数値です"
    end
  end
end
