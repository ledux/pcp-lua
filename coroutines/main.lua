producer = coroutine.create(function (workload) 
      -- der zustand der variable bleibt bestehen bei aufruf von yield
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
        
        -- coroutine kann einen wert zurückliefern
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
          _, message_from_coroutine = coroutine.resume(consumer, workload)
          
            print(message_from_coroutine or "")
            
        end
  end
  
starter()