require 'json'

def message

  1.upto(2) do |i|
    if i % 5 == 0 and i % 3 == 0
      @text = "FizzBuzz"
    elsif i % 5 == 0
      @text = "Buzz"
    elsif i % 3 == 0
      @text = "Fizz"
    else
      @text = i
    end

    # payload = { 
    #   :channel => 'fizz', 
    #   :username => 'rockwellwindsor', 
    #   :text => @text }.to_json 

    # curl https://slack.com/api/chat.postMessage -X POST -d "channel=#tehchannel" -d "text=teh text" -d "username=teh user" -d "token=teh-token-you-got-from-teh-page-that-machinehead115-linked-to" -d "icon_emoji=:simple_smile:"

    # cmd = "curl -X POST -d -URL #{url} 'https://slack.com/api/chat.postMessage?token=xoxp-139208486004-139821598087-139803314019-b8cf6377fa906da18091019404728cff&channel=fizz&text=hey&pretty=1'"
    # cmd = "curl -X POST -d -URL #{url} -d 'token=xoxp-139208486004-139821598087-9803314019-b8cf6377fa906da18091019404728cff' -d 'channel=fizz' -d'text=#{text}' "
    # cmd = "curl -X POST --data-urlencode 'payload=#{payload}' #{'https://hooks.slack.com/services/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'}" 
    string = "token=xoxp-139208486004-139821598087-139803314019-b8cf6377fa906da18091019404728cff&channel=C431TNJTD&text=hey&pretty=1"
    url = "https://slack.com/api/chat.postMessage?#{string}"

    cmd = 'curl https://slack.com/api/chat.postMessage -X POST -d "token=xoxp-139208486004-139821598087-9803314019-b8cf6377fa906da18091019404728cff" -d "channel=C431TNJTD" -d "text=#{text}" '

    system(cmd) 
    sleep 1
    
  end
end

message






