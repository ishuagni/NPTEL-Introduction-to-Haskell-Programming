--example1
--input=> enqueue 5 (Queue [1,2,3,4])
--output=> 1->2->3->4->5
--example 2
--input=> dequeue (Queue [1,2,3,4])
--output=> 2->3->4

data Queue a = Queue [a]

enqueue :: a -> Queue a -> Queue a
enqueue x (Queue l) = Queue (l ++ [x])

dequeue :: Queue a -> Queue a
dequeue (Queue (x:xs)) = Queue xs

printel :: (Show a) => [a] -> String
printel [] = ""
printel [x] = (show x)
printel (x:xs) = (show x) ++ "->" ++ (printel xs) 

instance (Show a) => Show (Queue a) where
 show (Queue l) = printel l
 
 
