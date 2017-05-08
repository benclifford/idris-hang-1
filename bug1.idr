
-- -p effects
import Effects

import Effect.File

partial shred_config : IO (List (String, String))
shred_config = pure []

partial main : IO ()
main = do
  putStrLn "idris ffi test start"

  putStrLn "reading config"

  config_map <- shred_config

  putStrLn "config shredded to map:"
  printLn config_map

  let username = lookup "username" config_map

  let password = lookup "password" config_map
  let app_id = lookup "appid" config_map
  let app_token = lookup "appsecret" config_map

  putStrLn "looked up username:"
  printLn username

  s <- return "s" -- foreign FFI_C "foo" (String -> CFnPtr ( String -> () ) -> IO String) "hello" (MkCFnPtr callback)

  putStrLn $ "string returned is: " ++ s

  putStrLn $ "calling global init for curl"
  printLn ret
  putStrLn $ "called global init for curl"

  putStrLn "Initialising easy session"

  putStrLn "set user agent result code:"

  putStrLn "Performing easy session"

  response_body <- return "foo" -- foreign FFI_C "cast_to_string_helper" (Ptr -> IO String) content_buf_ptr

  putStrLn "idris-side: buffer string is: "
  putStrLn response_body

  let asJSON = Config.JSON.fromString response_body


  putStrLn "buffer as json:"
  printLn asJSON

  let (Right (JsonObject dict)) = asJSON -- TODO error handling on non-match case
 
  let (Just (JsonString access_token)) = Data.AVL.Dict.lookup "access_token" dict
 
  putStrLn "access_token is:"
  putStrLn access_token

  ret <- return 3 -- curlEasySetopt easy_handle2 CurlOptionUserAgent "idris-todaybot DEVELOPMENT/TESTING by u/benclifford"

  ret <- return 3 -- curlEasySetopt easy_handle2 CurlOptionHttpHeader slist

  ret <- return 3 -- curlEasySetopt easy_handle2 CurlOptionUrl "https://oauth.reddit.com/r/LondonSocialClub/hot?limit=100"
  -- TODO: check ret

  putStrLn "Performing easy session (2)"

  ret <- return 3 -- foreign FFI_C "curl_easy_perform" (Ptr -> IO Int) easy_handle2

  putStrLn "easy_perform return code:"
  printLn ret

  putStrLn "Shutting down libcurl"
  ret <- return 3 -- foreign FFI_C "curl_global_cleanup" (IO ())
  putStrLn "idris ffi test end"

