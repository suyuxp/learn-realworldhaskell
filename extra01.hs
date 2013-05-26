import Control.Concurrent
import System.IO

main :: IO ( )
main = do { forkIO (hPutStr stdout "Hello")
          ; hPutStr stdout " world\n" }