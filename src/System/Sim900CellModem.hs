module System.Sim900CellModem where

import           System.Sim900CellModem.Internal

import           System.Hardware.Serialport


defaultCellModemPort = "/dev/ttyAMA0"

defaultCellModemSettings = defaultSerialSettings {commSpeed=CS115200}

waitForInput :: IO ()
waitForInput = do
   port <- openSerial defaultCellModemPort defaultCellModemSettings
   rslt <- recv port 9
   print rslt
   return ()
