producer = coroutine.create(function (workload) 
      produceCounter = 10
      
      while(produceCounter > 0)
      do
        print("produce some work")
        produceCounter = produceCounter - 1 
        workload.counter = workload.counter + 1 

        coroutine.yield()
      end
  end
)

consumer = coroutine.create(function (workload) 
      returnValue = "value from coroutine"
      
      while(workload.counter > 0)
      do
        print("do some work")
        workload.counter = workload.counter - 1 
        
        coroutine.yield("current workload: " .. workload.counter)
      end
      
      print("no more work")
  end
)

starter = function()
  workload = {}
  workload.counter = 10

  while(coroutine.status(consumer) ~= "dead")
        do
          
          coroutine.resume(producer, workload)
          _, value = coroutine.resume(consumer, workload)
          
          if value ~= nil then
            print(value)
          end
        end
  end
  
starter()