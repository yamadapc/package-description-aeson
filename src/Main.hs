module Main where

import           Distribution.PackageDescription.Aeson
import           Distribution.PackageDescription
import           Distribution.PackageDescription.Parse
import qualified Data.ByteString.Lazy.Char8
import           System.Directory

main = do
    cwd <- getCurrentDirectory
    mcabal <- find ((== ".cabal") . takeExtension)
              getDirectoryContents cwd
    case mcabal of
        Just cabalPth -> do
            cabalFile <- readFile cabalPth
            let ParseOk _ g <- parsePackageDescription cabalFile
            putStrLn (Data.ByteString.Lazy.Char8.unpack (encodePretty g))
        Nothing -> error "Couldn't find cabal file"
