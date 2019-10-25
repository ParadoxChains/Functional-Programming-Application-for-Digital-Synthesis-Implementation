implementation module PcmWav.Byte

import StdEnv

:: Byte :== Char

natToBytesLE :: !Int !Int -> [Byte]
natToBytesLE i n = take i (go n) where
  go n = [toChar (n bitand 255) : go (n >> 8)]
