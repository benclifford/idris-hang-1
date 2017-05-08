
-- with this import, build takes 25s
-- without this import, build takes 4s
-- import Effects

partial main : IO ()
main = do

  response_body <- pure "foo" 

  putStrLn "A"

  ret <- pure 3 

  ret <- pure 3 

  ret <- pure 3 

  putStrLn "B"

  ret <- pure 3 

  putStrLn "C"
  printLn ret

  putStrLn "D"
  ret <- pure 3 
  putStrLn "E"

