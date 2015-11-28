{-# LANGUAGE TemplateHaskell #-}
import Data.Aeson
import Data.Aeson.TH

data Something = Something { field :: Either String Int
                           }

deriveJSON defaultOptions ''Something

main = print (encode (Left (Something (Right 10)) :: Either Something Int))
