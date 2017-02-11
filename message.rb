def message

  url = 'https://slack.com/api/chat.postMessage'
  token = ARGV[0]

  1.upto(100) do |i|
    if i % 5 == 0 and i % 3 == 0
      text = "FizzBuzz"
    elsif i % 5 == 0
      text = "Buzz"
    elsif i % 3 == 0
      text = "Fizz"
    else
      text = i
    end

    cmd = "curl -X POST -d -URL #{url} -d 'token=#{token}' -d 'chat:write:bot=buzzbot' -d 'channel=general' -d 'text=#{text}' "

    system(cmd) 

    sleep 1
    
  end
end

message






