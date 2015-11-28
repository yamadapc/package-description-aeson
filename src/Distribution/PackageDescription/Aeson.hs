{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
module Distribution.PackageDescription.Aeson
  where

import           Data.Aeson.TH                   (defaultOptions, deriveJSON)
import           Data.Map
import           Data.Version
import           Distribution.Compiler
import           Distribution.License
import           Distribution.ModuleName
import           Distribution.Package
import           Distribution.PackageDescription
import           Distribution.System
import           Distribution.Version
import           Language.Haskell.Extension

deriveJSON defaultOptions ''Version
deriveJSON defaultOptions ''VersionRange
deriveJSON defaultOptions ''CompilerFlavor
deriveJSON defaultOptions ''License
deriveJSON defaultOptions ''PackageName
deriveJSON defaultOptions ''PackageIdentifier
deriveJSON defaultOptions ''Dependency
deriveJSON defaultOptions ''ModuleName
deriveJSON defaultOptions ''ModuleRenaming
deriveJSON defaultOptions ''Map
deriveJSON defaultOptions ''Language
deriveJSON defaultOptions ''TestType
deriveJSON defaultOptions ''BuildInfo
deriveJSON defaultOptions ''TestSuiteInterface
deriveJSON defaultOptions ''Extension
deriveJSON defaultOptions ''KnownExtension
deriveJSON defaultOptions ''BenchmarkType
deriveJSON defaultOptions ''BenchmarkInterface
deriveJSON defaultOptions ''Benchmark
deriveJSON defaultOptions ''BuildType
deriveJSON defaultOptions ''ModuleReexport
deriveJSON defaultOptions ''RepoKind
deriveJSON defaultOptions ''RepoType
deriveJSON defaultOptions ''Executable
deriveJSON defaultOptions ''SourceRepo
deriveJSON defaultOptions ''Library
deriveJSON defaultOptions ''TestSuite
deriveJSON defaultOptions ''PackageDescription
deriveJSON defaultOptions ''FlagName
deriveJSON defaultOptions ''Flag
deriveJSON defaultOptions ''Condition
deriveJSON defaultOptions ''CondTree
deriveJSON defaultOptions ''Arch
deriveJSON defaultOptions ''OS
deriveJSON defaultOptions ''ConfVar
deriveJSON defaultOptions ''GenericPackageDescription
