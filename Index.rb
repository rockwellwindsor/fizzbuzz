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

    payload = { 
      :channel => 'fizz', 
      :username => 'rockwellwindsor', 
      :text => @text }.to_json 

    cmd = "curl -X POST --data-urlencode 'payload=#{payload}' #{'https://hooks.slack.com/services/###'}" 

    system(cmd) 
    sleep 1
    
  end
end

message






