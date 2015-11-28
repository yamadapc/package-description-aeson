{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
module Main where

import           Data.Aeson
import           Data.Aeson.Encode.Pretty
import           Data.Aeson.TH
import           Data.ByteString.Lazy.Char8            (pack, unpack)
import           Distribution.Compiler
import           Distribution.Package
import           Distribution.PackageDescription
import           Distribution.PackageDescription.Aeson ()
import           Distribution.PackageDescription.Parse
import           Distribution.Version
import           Paths_package_description_aeson
import           System.IO
import           Test.Hspec

main :: IO ()
main = hspec $ describe "encode :: PackageDescription -> ByteString" $ do
    it "is able to decode/encode this package's package description" $ do
        fn <- getDataFileName "package-description-aeson.cabal"
        b <- readFile fn
        let ParseOk _ g = parsePackageDescription b
        hPutStrLn stderr (unpack (encodePretty g))
        -- print (eitherDecode (encode g) :: (Either String GenericPackageDescription))
        -- print (eitherDecode (encode (package (packageDescription g))) :: (Either String PackageIdentifier))
        -- print (eitherDecode (encode (testedWith (packageDescription g))) :: (Either String [(CompilerFlavor, VersionRange)]))
        -- print (eitherDecode (encode (library (packageDescription g))) :: (Either String (Maybe Library)))
        -- print (eitherDecode (encode (buildType (packageDescription g))) :: (Either String (Maybe BuildType)))
        print ("specVersionRaw", (encode (specVersionRaw (packageDescription g))))
        print ("specVersionRaw", (encode (Right "something" :: Either String String)))
        -- print (encode (Left (Something (Right 10)) :: Either Something Int))
        let json = "{\"Right\":{\"tag\":\"UnionVersionRanges\",\"contents\":[{\"tag\":\"ThisVersion\",\"contents\":{\"versionBranch\":[1,10],\"versionTags\":[]}},{\"tag\":\"LaterVersion\",\"contents\":{\"versionBranch\":[1,10],\"versionTags\":[]}}]}}"
        print ((eitherDecode (pack json)) :: (Either String (Either Version VersionRange)))
        decode (encode g) `shouldBe` Just g

-- data Something = Something { field :: Either String Int
--                            }

-- deriveJSON defaultOptions ''Something

-- {-# LANGUAGE TemplateHaskell #-}
-- import           Data.Aeson
-- import           Data.Aeson.TH

-- data Something = Something { field :: Either String Int
--                            }

-- deriveJSON defaultOptions ''Something

-- main = print (encode (Left (Something (Right 10)) :: Either Something Int))
