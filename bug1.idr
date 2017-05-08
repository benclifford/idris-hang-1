
import Effects

shred_config : IO (List (String, String))
shred_config = pure []

partial main : IO ()
main = do

  response_body <- pure "foo" -- foreign FFI_C "cast_to_string_helper" (Ptr -> IO String) content_buf_ptr

  putStrLn "idris-side: buffer string is: "
  putStrLn response_body

  ret <- pure 3 -- curlEasySetopt easy_handle2 CurlOptionUserAgent "idris-todaybot DEVELOPMENT/TESTING by u/benclifford"

  ret <- pure 3 -- curlEasySetopt easy_handle2 CurlOptionHttpHeader slist

  ret <- pure 3 -- curlEasySetopt easy_handle2 CurlOptionUrl "https://oauth.reddit.com/r/LondonSocialClub/hot?limit=100"
  -- TODO: check ret

  putStrLn "Performing easy session (2)"

  ret <- pure 3 -- foreign FFI_C "curl_easy_perform" (Ptr -> IO Int) easy_handle2

  putStrLn "easy_perform pure code:"
  printLn ret

  putStrLn "Shutting down libcurl"
  ret <- pure 3 -- foreign FFI_C "curl_global_cleanup" (IO ())
  putStrLn "idris ffi test end"

