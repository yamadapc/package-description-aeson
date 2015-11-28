Building package-description-aeson-0.1.0.0...
Preprocessing library package-description-aeson-0.1.0.0...
[1 of 1] Compiling Distribution.PackageDescription.Aeson ( src/Distribution/PackageDescription/Aeson.hs, dist/build/Distribution/PackageDescription/Aeson.o )
src/Distribution/PackageDescription/Aeson.hs:18:1-35: Splicing declarations
    deriveJSON defaultOptions ''Version
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Version where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_agnl
            -> case value_agnl of {
                 Version arg1_agnm arg2_agnn
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "versionBranch")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_agnm),
                         ((text-1.2.1.3:Data.Text.pack "versionTags")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_agnn)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_agno
            -> case value_agno of {
                 Version arg1_agnp arg2_agnq
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "versionBranch"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_agnp))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "versionTags"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_agnq)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Version where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_agnr
            -> case value_agnr of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_agns
                   -> ((Version
                        <$>
                          (Data.Aeson.TH.lookupField
                             "Data.Version.Version"
                             "Version"
                             recObj_agns
                             (text-1.2.1.3:Data.Text.pack "versionBranch")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Data.Version.Version"
                            "Version"
                            recObj_agns
                            (text-1.2.1.3:Data.Text.pack "versionTags")))
                 other_agnt
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "Version"
                        "Data.Version.Version"
                        "Object"
                        (Data.Aeson.TH.valueConName other_agnt) }
src/Distribution/PackageDescription/Aeson.hs:19:1-40: Splicing declarations
    deriveJSON defaultOptions ''VersionRange
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON VersionRange where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ahK3
            -> case value_ahK3 of {
                 AnyVersion
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "AnyVersion"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 ThisVersion arg1_ahK4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "ThisVersion"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahK4))]
                 LaterVersion arg1_ahK5
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "LaterVersion"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahK5))]
                 EarlierVersion arg1_ahK6
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "EarlierVersion"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahK6))]
                 WildcardVersion arg1_ahK7
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "WildcardVersion"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahK7))]
                 UnionVersionRanges arg1_ahK8 arg2_ahK9
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnionVersionRanges"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ahKa <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ahKa
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahK8);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ahKa
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ahK9);
                                        return mv_ahKa }))))]
                 IntersectVersionRanges arg1_ahKb arg2_ahKc
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "IntersectVersionRanges"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ahKd <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ahKd
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahKb);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ahKd
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ahKc);
                                        return mv_ahKd }))))]
                 VersionRangeParens arg1_ahKe
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "VersionRangeParens"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ahKe))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ahKf
            -> case value_ahKf of {
                 AnyVersion
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "AnyVersion"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 ThisVersion arg1_ahKg
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "ThisVersion"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ahKg))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 LaterVersion arg1_ahKh
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "LaterVersion"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ahKh))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 EarlierVersion arg1_ahKi
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "EarlierVersion"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ahKi))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 WildcardVersion arg1_ahKj
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "WildcardVersion"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ahKj))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnionVersionRanges arg1_ahKk arg2_ahKl
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnionVersionRanges"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ahKk)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ahKl)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 IntersectVersionRanges arg1_ahKm arg2_ahKn
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "IntersectVersionRanges"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ahKm)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ahKn)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 VersionRangeParens arg1_ahKo
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "VersionRangeParens"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ahKo))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON VersionRange where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ahKp
            -> case value_ahKp of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ahKq
                   -> do { conKey_ahKr <- (obj_ahKq
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ahKr of {
                             _ | (conKey_ahKr == (text-1.2.1.3:Data.Text.pack "AnyVersion"))
                               -> do { val_ahKs <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKs of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ahKt
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ahKt
                                           -> pure AnyVersion
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AnyVersion"
                                                "Distribution.Version.VersionRange"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ahKt))
                                         other_ahKu
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AnyVersion"
                                                "Distribution.Version.VersionRange"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ahKu) } }
                               | (conKey_ahKr == (text-1.2.1.3:Data.Text.pack "ThisVersion"))
                               -> do { val_ahKv <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKv of {
                                         arg_ahKw
                                           -> (ThisVersion
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ahKw)) } }
                               | (conKey_ahKr == (text-1.2.1.3:Data.Text.pack "LaterVersion"))
                               -> do { val_ahKx <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKx of {
                                         arg_ahKy
                                           -> (LaterVersion
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ahKy)) } }
                               | (conKey_ahKr == (text-1.2.1.3:Data.Text.pack "EarlierVersion"))
                               -> do { val_ahKz <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKz of {
                                         arg_ahKA
                                           -> (EarlierVersion
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ahKA)) } }
                               | (conKey_ahKr == (text-1.2.1.3:Data.Text.pack "WildcardVersion"))
                               -> do { val_ahKB <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKB of {
                                         arg_ahKC
                                           -> (WildcardVersion
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ahKC)) } }
                               | (conKey_ahKr
                                  == (text-1.2.1.3:Data.Text.pack "UnionVersionRanges"))
                               -> do { val_ahKD <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKD of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ahKE
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ahKE)
                                                  == 2) then
                                                  ((UnionVersionRanges
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ahKE
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ahKE
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "UnionVersionRanges"
                                                    "Distribution.Version.VersionRange"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ahKE))
                                         other_ahKF
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "UnionVersionRanges"
                                                "Distribution.Version.VersionRange"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ahKF) } }
                               | (conKey_ahKr
                                  == (text-1.2.1.3:Data.Text.pack "IntersectVersionRanges"))
                               -> do { val_ahKG <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKG of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ahKH
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ahKH)
                                                  == 2) then
                                                  ((IntersectVersionRanges
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ahKH
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ahKH
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "IntersectVersionRanges"
                                                    "Distribution.Version.VersionRange"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ahKH))
                                         other_ahKI
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IntersectVersionRanges"
                                                "Distribution.Version.VersionRange"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ahKI) } }
                               | (conKey_ahKr
                                  == (text-1.2.1.3:Data.Text.pack "VersionRangeParens"))
                               -> do { val_ahKJ <- (obj_ahKq
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ahKJ of {
                                         arg_ahKK
                                           -> (VersionRangeParens
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ahKK)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.Version.VersionRange"
                                    ["AnyVersion", "ThisVersion", "LaterVersion", "EarlierVersion",
                                     "WildcardVersion", "UnionVersionRanges",
                                     "IntersectVersionRanges", "VersionRangeParens"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ahKr) } }
                 other_ahKL
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.Version.VersionRange"
                        (Data.Aeson.TH.valueConName other_ahKL) }
src/Distribution/PackageDescription/Aeson.hs:20:1-42: Splicing declarations
    deriveJSON defaultOptions ''CompilerFlavor
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON CompilerFlavor where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ai83
            -> case value_ai83 of {
                 GHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "GHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 GHCJS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "GHCJS"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 NHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "NHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 YHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "YHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Hugs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Hugs"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 HBC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "HBC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Helium
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Helium"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 JHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "JHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 LHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "LHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 UHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UHC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 HaskellSuite arg1_ai84
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "HaskellSuite"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ai84))]
                 OtherCompiler arg1_ai85
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OtherCompiler"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ai85))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ai86
            -> case value_ai86 of {
                 GHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "GHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 GHCJS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "GHCJS"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 NHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "NHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 YHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "YHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Hugs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Hugs"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 HBC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "HBC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Helium
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Helium"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 JHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "JHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 LHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "LHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UHC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UHC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 HaskellSuite arg1_ai87
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "HaskellSuite"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ai87))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OtherCompiler arg1_ai88
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OtherCompiler"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ai88))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON CompilerFlavor where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ai89
            -> case value_ai89 of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ai8a
                   -> do { conKey_ai8b <- (obj_ai8a
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ai8b of {
                             _ | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "GHC"))
                               -> do { val_ai8c <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8c of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8d
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8d
                                           -> pure GHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8d))
                                         other_ai8e
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8e) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "GHCJS"))
                               -> do { val_ai8f <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8f of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8g
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8g
                                           -> pure GHCJS
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GHCJS"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8g))
                                         other_ai8h
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GHCJS"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8h) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "NHC"))
                               -> do { val_ai8i <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8i of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8j
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8j
                                           -> pure NHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "NHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8j))
                                         other_ai8k
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "NHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8k) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "YHC"))
                               -> do { val_ai8l <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8l of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8m
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8m
                                           -> pure YHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "YHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8m))
                                         other_ai8n
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "YHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8n) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "Hugs"))
                               -> do { val_ai8o <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8o of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8p
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8p
                                           -> pure Hugs
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Hugs"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8p))
                                         other_ai8q
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Hugs"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8q) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "HBC"))
                               -> do { val_ai8r <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8r of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8s
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8s
                                           -> pure HBC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HBC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8s))
                                         other_ai8t
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HBC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8t) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "Helium"))
                               -> do { val_ai8u <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8u of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8v
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8v
                                           -> pure Helium
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Helium"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8v))
                                         other_ai8w
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Helium"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8w) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "JHC"))
                               -> do { val_ai8x <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8x of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8y
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8y
                                           -> pure JHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "JHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8y))
                                         other_ai8z
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "JHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8z) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "LHC"))
                               -> do { val_ai8A <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8A of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8B
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8B
                                           -> pure LHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "LHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8B))
                                         other_ai8C
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "LHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8C) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "UHC"))
                               -> do { val_ai8D <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8D of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ai8E
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ai8E
                                           -> pure UHC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "UHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ai8E))
                                         other_ai8F
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "UHC"
                                                "Distribution.Compiler.CompilerFlavor"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ai8F) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "HaskellSuite"))
                               -> do { val_ai8G <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8G of {
                                         arg_ai8H
                                           -> (HaskellSuite
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ai8H)) } }
                               | (conKey_ai8b == (text-1.2.1.3:Data.Text.pack "OtherCompiler"))
                               -> do { val_ai8I <- (obj_ai8a
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ai8I of {
                                         arg_ai8J
                                           -> (OtherCompiler
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ai8J)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.Compiler.CompilerFlavor"
                                    ["GHC", "GHCJS", "NHC", "YHC", "Hugs", "HBC", "Helium", "JHC",
                                     "LHC", "UHC", "HaskellSuite", "OtherCompiler"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ai8b) } }
                 other_ai8K
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.Compiler.CompilerFlavor"
                        (Data.Aeson.TH.valueConName other_ai8K) }
src/Distribution/PackageDescription/Aeson.hs:21:1-35: Splicing declarations
    deriveJSON defaultOptions ''License
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON License where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aipJ
            -> case value_aipJ of {
                 GPL arg1_aipK
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "GPL"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipK))]
                 AGPL arg1_aipL
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "AGPL"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipL))]
                 LGPL arg1_aipM
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "LGPL"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipM))]
                 BSD2
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BSD2"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 BSD3
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BSD3"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 BSD4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BSD4"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 MIT
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "MIT"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 ISC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "ISC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 MPL arg1_aipN
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "MPL"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipN))]
                 Apache arg1_aipO
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Apache"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipO))]
                 PublicDomain
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "PublicDomain"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 AllRightsReserved
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "AllRightsReserved"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 UnspecifiedLicense
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnspecifiedLicense"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OtherLicense
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OtherLicense"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 UnknownLicense arg1_aipP
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnknownLicense"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aipP))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aipQ
            -> case value_aipQ of {
                 GPL arg1_aipR
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "GPL"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipR))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 AGPL arg1_aipS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "AGPL"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipS))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 LGPL arg1_aipT
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "LGPL"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipT))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 BSD2
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BSD2"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 BSD3
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BSD3"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 BSD4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BSD4"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 MIT
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "MIT"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 ISC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "ISC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 MPL arg1_aipU
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "MPL"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipU))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Apache arg1_aipV
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Apache"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipV))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 PublicDomain
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "PublicDomain"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 AllRightsReserved
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "AllRightsReserved"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnspecifiedLicense
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnspecifiedLicense"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OtherLicense
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OtherLicense"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnknownLicense arg1_aipW
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnknownLicense"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aipW))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON License where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aipX
            -> case value_aipX of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_aipY
                   -> do { conKey_aipZ <- (obj_aipY
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_aipZ of {
                             _ | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "GPL"))
                               -> do { val_aiq0 <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiq0 of {
                                         arg_aiq1
                                           -> (GPL
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiq1)) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "AGPL"))
                               -> do { val_aiq2 <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiq2 of {
                                         arg_aiq3
                                           -> (AGPL
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiq3)) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "LGPL"))
                               -> do { val_aiq4 <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiq4 of {
                                         arg_aiq5
                                           -> (LGPL
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiq5)) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "BSD2"))
                               -> do { val_aiq6 <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiq6 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiq7
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiq7
                                           -> pure BSD2
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD2"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiq7))
                                         other_aiq8
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD2"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiq8) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "BSD3"))
                               -> do { val_aiq9 <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiq9 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqa
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqa
                                           -> pure BSD3
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD3"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqa))
                                         other_aiqb
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD3"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqb) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "BSD4"))
                               -> do { val_aiqc <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqc of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqd
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqd
                                           -> pure BSD4
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD4"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqd))
                                         other_aiqe
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BSD4"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqe) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "MIT"))
                               -> do { val_aiqf <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqf of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqg
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqg
                                           -> pure MIT
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "MIT"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqg))
                                         other_aiqh
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "MIT"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqh) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "ISC"))
                               -> do { val_aiqi <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqi of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqj
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqj
                                           -> pure ISC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "ISC"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqj))
                                         other_aiqk
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "ISC"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqk) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "MPL"))
                               -> do { val_aiql <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiql of {
                                         arg_aiqm
                                           -> (MPL
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiqm)) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "Apache"))
                               -> do { val_aiqn <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqn of {
                                         arg_aiqo
                                           -> (Apache
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiqo)) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "PublicDomain"))
                               -> do { val_aiqp <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqp of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqq
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqq
                                           -> pure PublicDomain
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PublicDomain"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqq))
                                         other_aiqr
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PublicDomain"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqr) } }
                               | (conKey_aipZ
                                  == (text-1.2.1.3:Data.Text.pack "AllRightsReserved"))
                               -> do { val_aiqs <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqs of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqt
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqt
                                           -> pure AllRightsReserved
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AllRightsReserved"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqt))
                                         other_aiqu
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AllRightsReserved"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqu) } }
                               | (conKey_aipZ
                                  == (text-1.2.1.3:Data.Text.pack "UnspecifiedLicense"))
                               -> do { val_aiqv <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqv of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqw
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqw
                                           -> pure UnspecifiedLicense
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "UnspecifiedLicense"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqw))
                                         other_aiqx
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "UnspecifiedLicense"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqx) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "OtherLicense"))
                               -> do { val_aiqy <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqy of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiqz
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiqz
                                           -> pure OtherLicense
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OtherLicense"
                                                "Distribution.License.License"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiqz))
                                         other_aiqA
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OtherLicense"
                                                "Distribution.License.License"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiqA) } }
                               | (conKey_aipZ == (text-1.2.1.3:Data.Text.pack "UnknownLicense"))
                               -> do { val_aiqB <- (obj_aipY
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiqB of {
                                         arg_aiqC
                                           -> (UnknownLicense
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aiqC)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.License.License"
                                    ["GPL", "AGPL", "LGPL", "BSD2", "BSD3", "BSD4", "MIT", "ISC",
                                     "MPL", "Apache", "PublicDomain", "AllRightsReserved",
                                     "UnspecifiedLicense", "OtherLicense", "UnknownLicense"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_aipZ) } }
                 other_aiqD
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.License.License"
                        (Data.Aeson.TH.valueConName other_aiqD) }
src/Distribution/PackageDescription/Aeson.hs:22:1-39: Splicing declarations
    deriveJSON defaultOptions ''PackageName
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON PackageName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiJw
            -> case value_aiJw of {
                 PackageName arg1_aiJx
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "unPackageName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_aiJx)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiJy
            -> case value_aiJy of {
                 PackageName arg1_aiJz
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "unPackageName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_aiJz)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON PackageName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiJA
            -> case value_aiJA of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_aiJB
                   -> (PackageName
                       <$>
                         (Data.Aeson.TH.lookupField
                            "Distribution.Package.PackageName"
                            "PackageName"
                            recObj_aiJB
                            (text-1.2.1.3:Data.Text.pack "unPackageName")))
                 other_aiJC
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "PackageName"
                        "Distribution.Package.PackageName"
                        "Object"
                        (Data.Aeson.TH.valueConName other_aiJC) }
src/Distribution/PackageDescription/Aeson.hs:23:1-45: Splicing declarations
    deriveJSON defaultOptions ''PackageIdentifier
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON PackageIdentifier where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiKF
            -> case value_aiKF of {
                 PackageIdentifier arg1_aiKG arg2_aiKH
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "pkgName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_aiKG),
                         ((text-1.2.1.3:Data.Text.pack "pkgVersion")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_aiKH)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiKI
            -> case value_aiKI of {
                 PackageIdentifier arg1_aiKJ arg2_aiKK
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "pkgName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_aiKJ))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "pkgVersion"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_aiKK)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON PackageIdentifier where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiKL
            -> case value_aiKL of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_aiKM
                   -> ((PackageIdentifier
                        <$>
                          (Data.Aeson.TH.lookupField
                             "Distribution.Package.PackageIdentifier"
                             "PackageIdentifier"
                             recObj_aiKM
                             (text-1.2.1.3:Data.Text.pack "pkgName")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.Package.PackageIdentifier"
                            "PackageIdentifier"
                            recObj_aiKM
                            (text-1.2.1.3:Data.Text.pack "pkgVersion")))
                 other_aiKN
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "PackageIdentifier"
                        "Distribution.Package.PackageIdentifier"
                        "Object"
                        (Data.Aeson.TH.valueConName other_aiKN) }
src/Distribution/PackageDescription/Aeson.hs:24:1-38: Splicing declarations
    deriveJSON defaultOptions ''Dependency
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Dependency where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiMe
            -> case value_aiMe of {
                 Dependency arg1_aiMf arg2_aiMg
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                        (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                           (do { mv_aiMh <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                              2;
                                 vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                   mv_aiMh
                                   0
                                   (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aiMf);
                                 vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                   mv_aiMh
                                   1
                                   (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_aiMg);
                                 return mv_aiMh })) }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiMi
            -> case value_aiMi of {
                 Dependency arg1_aiMj arg2_aiMk
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '[')
                         Data.Monoid.<>
                           (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder arg1_aiMj)
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder arg2_aiMk)))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ']'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Dependency where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiMl
            -> case value_aiMl of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiMm
                   -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                             arr_aiMm)
                          == 2) then
                          ((Dependency
                            <$>
                              (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                 (arr_aiMm
                                  `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                    0)))
                           <*>
                             (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                (arr_aiMm
                                 `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                   1)))
                      else
                          Data.Aeson.TH.parseTypeMismatch'
                            "Dependency"
                            "Distribution.Package.Dependency"
                            "Array of length 2"
                            ("Array of length "
                             ++
                               ((show
                                 . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                  arr_aiMm))
                 other_aiMn
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "Dependency"
                        "Distribution.Package.Dependency"
                        "Array"
                        (Data.Aeson.TH.valueConName other_aiMn) }
src/Distribution/PackageDescription/Aeson.hs:25:1-38: Splicing declarations
    deriveJSON defaultOptions ''ModuleName
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON ModuleName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiOL
            -> case value_aiOL of {
                 Distribution.ModuleName.ModuleName arg1_aiOM
                   -> aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aiOM }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiON
            -> case value_aiON of {
                 Distribution.ModuleName.ModuleName arg1_aiOO
                   -> aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding arg1_aiOO }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON ModuleName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiOP
            -> case value_aiOP of {
                 arg_aiOQ
                   -> (Distribution.ModuleName.ModuleName
                       <$> (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON arg_aiOQ)) }
src/Distribution/PackageDescription/Aeson.hs:26:1-42: Splicing declarations
    deriveJSON defaultOptions ''ModuleRenaming
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON ModuleRenaming where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiPt
            -> case value_aiPt of {
                 ModuleRenaming arg1_aiPu arg2_aiPv
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                        (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                           (do { mv_aiPw <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                              2;
                                 vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                   mv_aiPw
                                   0
                                   (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aiPu);
                                 vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                   mv_aiPw
                                   1
                                   (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_aiPv);
                                 return mv_aiPw })) }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiPx
            -> case value_aiPx of {
                 ModuleRenaming arg1_aiPy arg2_aiPz
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '[')
                         Data.Monoid.<>
                           (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder arg1_aiPy)
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder arg2_aiPz)))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ']'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON ModuleRenaming where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiPA
            -> case value_aiPA of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiPB
                   -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                             arr_aiPB)
                          == 2) then
                          ((ModuleRenaming
                            <$>
                              (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                 (arr_aiPB
                                  `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                    0)))
                           <*>
                             (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                (arr_aiPB
                                 `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                   1)))
                      else
                          Data.Aeson.TH.parseTypeMismatch'
                            "ModuleRenaming"
                            "Distribution.PackageDescription.ModuleRenaming"
                            "Array of length 2"
                            ("Array of length "
                             ++
                               ((show
                                 . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                  arr_aiPB))
                 other_aiPC
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "ModuleRenaming"
                        "Distribution.PackageDescription.ModuleRenaming"
                        "Array"
                        (Data.Aeson.TH.valueConName other_aiPC) }
src/Distribution/PackageDescription/Aeson.hs:27:1-31: Splicing declarations
    deriveJSON defaultOptions ''Map
  ======>
    instance (aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON k_aiRW,
              aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON a_aiRX) =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON (Map k_aiRW a_aiRX) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiS6
            -> case value_aiS6 of {
                 containers-0.5.6.2:Data.Map.Base.Bin arg1_aiS7
                                                      arg2_aiS8
                                                      arg3_aiS9
                                                      arg4_aiSa
                                                      arg5_aiSb
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Bin"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_aiSc <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     5;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aiSc
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aiS7);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aiSc
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_aiS8);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aiSc
                                          2
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg3_aiS9);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aiSc
                                          3
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg4_aiSa);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aiSc
                                          4
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg5_aiSb);
                                        return mv_aiSc }))))]
                 containers-0.5.6.2:Data.Map.Base.Tip
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Tip"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiSd
            -> case value_aiSd of {
                 containers-0.5.6.2:Data.Map.Base.Bin arg1_aiSe
                                                      arg2_aiSf
                                                      arg3_aiSg
                                                      arg4_aiSh
                                                      arg5_aiSi
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Bin"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_aiSe)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        ((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                            arg2_aiSf)
                                                         Data.Monoid.<>
                                                           ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                               ',')
                                                            Data.Monoid.<>
                                                              ((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                                  arg3_aiSg)
                                                               Data.Monoid.<>
                                                                 ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                                     ',')
                                                                  Data.Monoid.<>
                                                                    ((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                                        arg4_aiSh)
                                                                     Data.Monoid.<>
                                                                       ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                                           ',')
                                                                        Data.Monoid.<>
                                                                          (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                                             arg5_aiSi)))))))))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 containers-0.5.6.2:Data.Map.Base.Tip
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Tip"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance (aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON k_aiRW,
              aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON a_aiRX) =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON (Map k_aiRW a_aiRX) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiSj
            -> case value_aiSj of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_aiSk
                   -> do { conKey_aiSl <- (obj_aiSk
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_aiSl of {
                             _ | (conKey_aiSl == (text-1.2.1.3:Data.Text.pack "Bin"))
                               -> do { val_aiSm <- (obj_aiSk
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiSm of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiSn
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_aiSn)
                                                  == 5) then
                                                  (((((containers-0.5.6.2:Data.Map.Base.Bin
                                                       <$>
                                                         (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                            (arr_aiSn
                                                             `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                               0)))
                                                      <*>
                                                        (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                           (arr_aiSn
                                                            `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                              1)))
                                                     <*>
                                                       (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                          (arr_aiSn
                                                           `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                             2)))
                                                    <*>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_aiSn
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            3)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_aiSn
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           4)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "Bin"
                                                    "Data.Map.Base.Map"
                                                    "Array of length 5"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_aiSn))
                                         other_aiSo
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Bin"
                                                "Data.Map.Base.Map"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiSo) } }
                               | (conKey_aiSl == (text-1.2.1.3:Data.Text.pack "Tip"))
                               -> do { val_aiSp <- (obj_aiSk
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiSp of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiSq
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiSq
                                           -> pure containers-0.5.6.2:Data.Map.Base.Tip
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Tip"
                                                "Data.Map.Base.Map"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiSq))
                                         other_aiSr
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Tip"
                                                "Data.Map.Base.Map"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiSr) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Data.Map.Base.Map"
                                    ["Bin", "Tip"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_aiSl) } }
                 other_aiSs
                   -> Data.Aeson.TH.noObjectFail
                        "Data.Map.Base.Map" (Data.Aeson.TH.valueConName other_aiSs) }
src/Distribution/PackageDescription/Aeson.hs:28:1-36: Splicing declarations
    deriveJSON defaultOptions ''Language
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Language where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aiZQ
            -> case value_aiZQ of {
                 Haskell98
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Haskell98"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Haskell2010
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Haskell2010"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 UnknownLanguage arg1_aiZR
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnknownLanguage"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aiZR))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aiZS
            -> case value_aiZS of {
                 Haskell98
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Haskell98"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Haskell2010
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Haskell2010"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnknownLanguage arg1_aiZT
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnknownLanguage"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aiZT))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Language where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aiZU
            -> case value_aiZU of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_aiZV
                   -> do { conKey_aiZW <- (obj_aiZV
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_aiZW of {
                             _ | (conKey_aiZW == (text-1.2.1.3:Data.Text.pack "Haskell98"))
                               -> do { val_aiZX <- (obj_aiZV
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aiZX of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aiZY
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aiZY
                                           -> pure Haskell98
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Haskell98"
                                                "Language.Haskell.Extension.Language"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aiZY))
                                         other_aiZZ
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Haskell98"
                                                "Language.Haskell.Extension.Language"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aiZZ) } }
                               | (conKey_aiZW == (text-1.2.1.3:Data.Text.pack "Haskell2010"))
                               -> do { val_aj00 <- (obj_aiZV
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aj00 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aj01
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_aj01
                                           -> pure Haskell2010
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Haskell2010"
                                                "Language.Haskell.Extension.Language"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_aj01))
                                         other_aj02
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Haskell2010"
                                                "Language.Haskell.Extension.Language"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aj02) } }
                               | (conKey_aiZW == (text-1.2.1.3:Data.Text.pack "UnknownLanguage"))
                               -> do { val_aj03 <- (obj_aiZV
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aj03 of {
                                         arg_aj04
                                           -> (UnknownLanguage
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aj04)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Language.Haskell.Extension.Language"
                                    ["Haskell98", "Haskell2010", "UnknownLanguage"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_aiZW) } }
                 other_aj05
                   -> Data.Aeson.TH.noObjectFail
                        "Language.Haskell.Extension.Language"
                        (Data.Aeson.TH.valueConName other_aj05) }
src/Distribution/PackageDescription/Aeson.hs:29:1-36: Splicing declarations
    deriveJSON defaultOptions ''TestType
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON TestType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_aj4r
            -> case value_aj4r of {
                 TestTypeExe arg1_aj4s
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestTypeExe"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aj4s))]
                 TestTypeLib arg1_aj4t
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestTypeLib"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aj4t))]
                 TestTypeUnknown arg1_aj4u arg2_aj4v
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestTypeUnknown"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_aj4w <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aj4w
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_aj4u);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_aj4w
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_aj4v);
                                        return mv_aj4w }))))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_aj4x
            -> case value_aj4x of {
                 TestTypeExe arg1_aj4y
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestTypeExe"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aj4y))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 TestTypeLib arg1_aj4z
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestTypeLib"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_aj4z))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 TestTypeUnknown arg1_aj4A arg2_aj4B
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestTypeUnknown"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_aj4A)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_aj4B)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON TestType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_aj4C
            -> case value_aj4C of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_aj4D
                   -> do { conKey_aj4E <- (obj_aj4D
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_aj4E of {
                             _ | (conKey_aj4E == (text-1.2.1.3:Data.Text.pack "TestTypeExe"))
                               -> do { val_aj4F <- (obj_aj4D
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aj4F of {
                                         arg_aj4G
                                           -> (TestTypeExe
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aj4G)) } }
                               | (conKey_aj4E == (text-1.2.1.3:Data.Text.pack "TestTypeLib"))
                               -> do { val_aj4H <- (obj_aj4D
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aj4H of {
                                         arg_aj4I
                                           -> (TestTypeLib
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_aj4I)) } }
                               | (conKey_aj4E == (text-1.2.1.3:Data.Text.pack "TestTypeUnknown"))
                               -> do { val_aj4J <- (obj_aj4D
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_aj4J of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_aj4K
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_aj4K)
                                                  == 2) then
                                                  ((TestTypeUnknown
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_aj4K
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_aj4K
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "TestTypeUnknown"
                                                    "Distribution.PackageDescription.TestType"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_aj4K))
                                         other_aj4L
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "TestTypeUnknown"
                                                "Distribution.PackageDescription.TestType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_aj4L) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.TestType"
                                    ["TestTypeExe", "TestTypeLib", "TestTypeUnknown"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_aj4E) } }
                 other_aj4M
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.TestType"
                        (Data.Aeson.TH.valueConName other_aj4M) }
src/Distribution/PackageDescription/Aeson.hs:30:1-37: Splicing declarations
    deriveJSON defaultOptions ''BuildInfo
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON BuildInfo where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajay
            -> case value_ajay of {
                 BuildInfo arg1_ajaz
                           arg2_ajaA
                           arg3_ajaB
                           arg4_ajaC
                           arg5_ajaD
                           arg6_ajaE
                           arg7_ajaF
                           arg8_ajaG
                           arg9_ajaH
                           arg10_ajaI
                           arg11_ajaJ
                           arg12_ajaK
                           arg13_ajaL
                           arg14_ajaM
                           arg15_ajaN
                           arg16_ajaO
                           arg17_ajaP
                           arg18_ajaQ
                           arg19_ajaR
                           arg20_ajaS
                           arg21_ajaT
                           arg22_ajaU
                           arg23_ajaV
                           arg24_ajaW
                           arg25_ajaX
                           arg26_ajaY
                           arg27_ajaZ
                           arg28_ajb0
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "buildable")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_ajaz),
                         ((text-1.2.1.3:Data.Text.pack "buildTools")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_ajaA),
                         ((text-1.2.1.3:Data.Text.pack "cppOptions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_ajaB),
                         ((text-1.2.1.3:Data.Text.pack "ccOptions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_ajaC),
                         ((text-1.2.1.3:Data.Text.pack "ldOptions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg5_ajaD),
                         ((text-1.2.1.3:Data.Text.pack "pkgconfigDepends")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg6_ajaE),
                         ((text-1.2.1.3:Data.Text.pack "frameworks")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg7_ajaF),
                         ((text-1.2.1.3:Data.Text.pack "cSources")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg8_ajaG),
                         ((text-1.2.1.3:Data.Text.pack "jsSources")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg9_ajaH),
                         ((text-1.2.1.3:Data.Text.pack "hsSourceDirs")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg10_ajaI),
                         ((text-1.2.1.3:Data.Text.pack "otherModules")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg11_ajaJ),
                         ((text-1.2.1.3:Data.Text.pack "defaultLanguage")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg12_ajaK),
                         ((text-1.2.1.3:Data.Text.pack "otherLanguages")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg13_ajaL),
                         ((text-1.2.1.3:Data.Text.pack "defaultExtensions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg14_ajaM),
                         ((text-1.2.1.3:Data.Text.pack "otherExtensions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg15_ajaN),
                         ((text-1.2.1.3:Data.Text.pack "oldExtensions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg16_ajaO),
                         ((text-1.2.1.3:Data.Text.pack "extraLibs")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg17_ajaP),
                         ((text-1.2.1.3:Data.Text.pack "extraGHCiLibs")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg18_ajaQ),
                         ((text-1.2.1.3:Data.Text.pack "extraLibDirs")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg19_ajaR),
                         ((text-1.2.1.3:Data.Text.pack "includeDirs")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg20_ajaS),
                         ((text-1.2.1.3:Data.Text.pack "includes")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg21_ajaT),
                         ((text-1.2.1.3:Data.Text.pack "installIncludes")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg22_ajaU),
                         ((text-1.2.1.3:Data.Text.pack "options")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg23_ajaV),
                         ((text-1.2.1.3:Data.Text.pack "profOptions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg24_ajaW),
                         ((text-1.2.1.3:Data.Text.pack "sharedOptions")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg25_ajaX),
                         ((text-1.2.1.3:Data.Text.pack "customFieldsBI")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg26_ajaY),
                         ((text-1.2.1.3:Data.Text.pack "targetBuildDepends")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg27_ajaZ),
                         ((text-1.2.1.3:Data.Text.pack "targetBuildRenaming")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg28_ajb0)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajb1
            -> case value_ajb1 of {
                 BuildInfo arg1_ajb2
                           arg2_ajb3
                           arg3_ajb4
                           arg4_ajb5
                           arg5_ajb6
                           arg6_ajb7
                           arg7_ajb8
                           arg8_ajb9
                           arg9_ajba
                           arg10_ajbb
                           arg11_ajbc
                           arg12_ajbd
                           arg13_ajbe
                           arg14_ajbf
                           arg15_ajbg
                           arg16_ajbh
                           arg17_ajbi
                           arg18_ajbj
                           arg19_ajbk
                           arg20_ajbl
                           arg21_ajbm
                           arg22_ajbn
                           arg23_ajbo
                           arg24_ajbp
                           arg25_ajbq
                           arg26_ajbr
                           arg27_ajbs
                           arg28_ajbt
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "buildable"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_ajb2))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "buildTools"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_ajb3))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "cppOptions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_ajb4))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "ccOptions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_ajb5))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "ldOptions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg5_ajb6))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "pkgconfigDepends"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg6_ajb7))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "frameworks"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg7_ajb8))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "cSources"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg8_ajb9))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "jsSources"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg9_ajba))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "hsSourceDirs"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg10_ajbb))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "otherModules"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg11_ajbc))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "defaultLanguage"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg12_ajbd))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "otherLanguages"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg13_ajbe))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "defaultExtensions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg14_ajbf))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "otherExtensions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg15_ajbg))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "oldExtensions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg16_ajbh))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraLibs"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg17_ajbi))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraGHCiLibs"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg18_ajbj))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraLibDirs"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg19_ajbk))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "includeDirs"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg20_ajbl))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "includes"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg21_ajbm))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "installIncludes"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg22_ajbn))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "options"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg23_ajbo))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "profOptions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg24_ajbp))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "sharedOptions"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg25_ajbq))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "customFieldsBI"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg26_ajbr))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "targetBuildDepends"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg27_ajbs))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "targetBuildRenaming"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg28_ajbt)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON BuildInfo where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajbu
            -> case value_ajbu of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_ajbv
                   -> ((((((((((((((((((((((((((((BuildInfo
                                                  <$>
                                                    (Data.Aeson.TH.lookupField
                                                       "Distribution.PackageDescription.BuildInfo"
                                                       "BuildInfo"
                                                       recObj_ajbv
                                                       (text-1.2.1.3:Data.Text.pack "buildable")))
                                                 <*>
                                                   (Data.Aeson.TH.lookupField
                                                      "Distribution.PackageDescription.BuildInfo"
                                                      "BuildInfo"
                                                      recObj_ajbv
                                                      (text-1.2.1.3:Data.Text.pack "buildTools")))
                                                <*>
                                                  (Data.Aeson.TH.lookupField
                                                     "Distribution.PackageDescription.BuildInfo"
                                                     "BuildInfo"
                                                     recObj_ajbv
                                                     (text-1.2.1.3:Data.Text.pack "cppOptions")))
                                               <*>
                                                 (Data.Aeson.TH.lookupField
                                                    "Distribution.PackageDescription.BuildInfo"
                                                    "BuildInfo"
                                                    recObj_ajbv
                                                    (text-1.2.1.3:Data.Text.pack "ccOptions")))
                                              <*>
                                                (Data.Aeson.TH.lookupField
                                                   "Distribution.PackageDescription.BuildInfo"
                                                   "BuildInfo"
                                                   recObj_ajbv
                                                   (text-1.2.1.3:Data.Text.pack "ldOptions")))
                                             <*>
                                               (Data.Aeson.TH.lookupField
                                                  "Distribution.PackageDescription.BuildInfo"
                                                  "BuildInfo"
                                                  recObj_ajbv
                                                  (text-1.2.1.3:Data.Text.pack "pkgconfigDepends")))
                                            <*>
                                              (Data.Aeson.TH.lookupField
                                                 "Distribution.PackageDescription.BuildInfo"
                                                 "BuildInfo"
                                                 recObj_ajbv
                                                 (text-1.2.1.3:Data.Text.pack "frameworks")))
                                           <*>
                                             (Data.Aeson.TH.lookupField
                                                "Distribution.PackageDescription.BuildInfo"
                                                "BuildInfo"
                                                recObj_ajbv
                                                (text-1.2.1.3:Data.Text.pack "cSources")))
                                          <*>
                                            (Data.Aeson.TH.lookupField
                                               "Distribution.PackageDescription.BuildInfo"
                                               "BuildInfo"
                                               recObj_ajbv
                                               (text-1.2.1.3:Data.Text.pack "jsSources")))
                                         <*>
                                           (Data.Aeson.TH.lookupField
                                              "Distribution.PackageDescription.BuildInfo"
                                              "BuildInfo"
                                              recObj_ajbv
                                              (text-1.2.1.3:Data.Text.pack "hsSourceDirs")))
                                        <*>
                                          (Data.Aeson.TH.lookupField
                                             "Distribution.PackageDescription.BuildInfo"
                                             "BuildInfo"
                                             recObj_ajbv
                                             (text-1.2.1.3:Data.Text.pack "otherModules")))
                                       <*>
                                         (Data.Aeson.TH.lookupField
                                            "Distribution.PackageDescription.BuildInfo"
                                            "BuildInfo"
                                            recObj_ajbv
                                            (text-1.2.1.3:Data.Text.pack "defaultLanguage")))
                                      <*>
                                        (Data.Aeson.TH.lookupField
                                           "Distribution.PackageDescription.BuildInfo"
                                           "BuildInfo"
                                           recObj_ajbv
                                           (text-1.2.1.3:Data.Text.pack "otherLanguages")))
                                     <*>
                                       (Data.Aeson.TH.lookupField
                                          "Distribution.PackageDescription.BuildInfo"
                                          "BuildInfo"
                                          recObj_ajbv
                                          (text-1.2.1.3:Data.Text.pack "defaultExtensions")))
                                    <*>
                                      (Data.Aeson.TH.lookupField
                                         "Distribution.PackageDescription.BuildInfo"
                                         "BuildInfo"
                                         recObj_ajbv
                                         (text-1.2.1.3:Data.Text.pack "otherExtensions")))
                                   <*>
                                     (Data.Aeson.TH.lookupField
                                        "Distribution.PackageDescription.BuildInfo"
                                        "BuildInfo"
                                        recObj_ajbv
                                        (text-1.2.1.3:Data.Text.pack "oldExtensions")))
                                  <*>
                                    (Data.Aeson.TH.lookupField
                                       "Distribution.PackageDescription.BuildInfo"
                                       "BuildInfo"
                                       recObj_ajbv
                                       (text-1.2.1.3:Data.Text.pack "extraLibs")))
                                 <*>
                                   (Data.Aeson.TH.lookupField
                                      "Distribution.PackageDescription.BuildInfo"
                                      "BuildInfo"
                                      recObj_ajbv
                                      (text-1.2.1.3:Data.Text.pack "extraGHCiLibs")))
                                <*>
                                  (Data.Aeson.TH.lookupField
                                     "Distribution.PackageDescription.BuildInfo"
                                     "BuildInfo"
                                     recObj_ajbv
                                     (text-1.2.1.3:Data.Text.pack "extraLibDirs")))
                               <*>
                                 (Data.Aeson.TH.lookupField
                                    "Distribution.PackageDescription.BuildInfo"
                                    "BuildInfo"
                                    recObj_ajbv
                                    (text-1.2.1.3:Data.Text.pack "includeDirs")))
                              <*>
                                (Data.Aeson.TH.lookupField
                                   "Distribution.PackageDescription.BuildInfo"
                                   "BuildInfo"
                                   recObj_ajbv
                                   (text-1.2.1.3:Data.Text.pack "includes")))
                             <*>
                               (Data.Aeson.TH.lookupField
                                  "Distribution.PackageDescription.BuildInfo"
                                  "BuildInfo"
                                  recObj_ajbv
                                  (text-1.2.1.3:Data.Text.pack "installIncludes")))
                            <*>
                              (Data.Aeson.TH.lookupField
                                 "Distribution.PackageDescription.BuildInfo"
                                 "BuildInfo"
                                 recObj_ajbv
                                 (text-1.2.1.3:Data.Text.pack "options")))
                           <*>
                             (Data.Aeson.TH.lookupField
                                "Distribution.PackageDescription.BuildInfo"
                                "BuildInfo"
                                recObj_ajbv
                                (text-1.2.1.3:Data.Text.pack "profOptions")))
                          <*>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.BuildInfo"
                               "BuildInfo"
                               recObj_ajbv
                               (text-1.2.1.3:Data.Text.pack "sharedOptions")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.BuildInfo"
                              "BuildInfo"
                              recObj_ajbv
                              (text-1.2.1.3:Data.Text.pack "customFieldsBI")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.BuildInfo"
                             "BuildInfo"
                             recObj_ajbv
                             (text-1.2.1.3:Data.Text.pack "targetBuildDepends")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.BuildInfo"
                            "BuildInfo"
                            recObj_ajbv
                            (text-1.2.1.3:Data.Text.pack "targetBuildRenaming")))
                 other_ajbw
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "BuildInfo"
                        "Distribution.PackageDescription.BuildInfo"
                        "Object"
                        (Data.Aeson.TH.valueConName other_ajbw) }
src/Distribution/PackageDescription/Aeson.hs:31:1-46: Splicing declarations
    deriveJSON defaultOptions ''TestSuiteInterface
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON TestSuiteInterface where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajmX
            -> case value_ajmX of {
                 TestSuiteExeV10 arg1_ajmY arg2_ajmZ
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestSuiteExeV10"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ajn0 <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajn0
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajmY);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajn0
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ajmZ);
                                        return mv_ajn0 }))))]
                 TestSuiteLibV09 arg1_ajn1 arg2_ajn2
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestSuiteLibV09"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ajn3 <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajn3
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajn1);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajn3
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ajn2);
                                        return mv_ajn3 }))))]
                 TestSuiteUnsupported arg1_ajn4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "TestSuiteUnsupported"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajn4))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajn5
            -> case value_ajn5 of {
                 TestSuiteExeV10 arg1_ajn6 arg2_ajn7
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestSuiteExeV10"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ajn6)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ajn7)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 TestSuiteLibV09 arg1_ajn8 arg2_ajn9
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestSuiteLibV09"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ajn8)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ajn9)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 TestSuiteUnsupported arg1_ajna
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "TestSuiteUnsupported"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajna))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON TestSuiteInterface where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajnb
            -> case value_ajnb of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ajnc
                   -> do { conKey_ajnd <- (obj_ajnc
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ajnd of {
                             _ | (conKey_ajnd
                                  == (text-1.2.1.3:Data.Text.pack "TestSuiteExeV10"))
                               -> do { val_ajne <- (obj_ajnc
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajne of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ajnf
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ajnf)
                                                  == 2) then
                                                  ((TestSuiteExeV10
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ajnf
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ajnf
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "TestSuiteExeV10"
                                                    "Distribution.PackageDescription.TestSuiteInterface"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ajnf))
                                         other_ajng
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "TestSuiteExeV10"
                                                "Distribution.PackageDescription.TestSuiteInterface"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ajng) } }
                               | (conKey_ajnd == (text-1.2.1.3:Data.Text.pack "TestSuiteLibV09"))
                               -> do { val_ajnh <- (obj_ajnc
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajnh of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ajni
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ajni)
                                                  == 2) then
                                                  ((TestSuiteLibV09
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ajni
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ajni
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "TestSuiteLibV09"
                                                    "Distribution.PackageDescription.TestSuiteInterface"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ajni))
                                         other_ajnj
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "TestSuiteLibV09"
                                                "Distribution.PackageDescription.TestSuiteInterface"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ajnj) } }
                               | (conKey_ajnd
                                  == (text-1.2.1.3:Data.Text.pack "TestSuiteUnsupported"))
                               -> do { val_ajnk <- (obj_ajnc
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajnk of {
                                         arg_ajnl
                                           -> (TestSuiteUnsupported
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajnl)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.TestSuiteInterface"
                                    ["TestSuiteExeV10", "TestSuiteLibV09", "TestSuiteUnsupported"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ajnd) } }
                 other_ajnm
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.TestSuiteInterface"
                        (Data.Aeson.TH.valueConName other_ajnm) }
src/Distribution/PackageDescription/Aeson.hs:32:1-37: Splicing declarations
    deriveJSON defaultOptions ''Extension
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Extension where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajBs
            -> case value_ajBs of {
                 EnableExtension arg1_ajBt
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "EnableExtension"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajBt))]
                 DisableExtension arg1_ajBu
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "DisableExtension"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajBu))]
                 UnknownExtension arg1_ajBv
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnknownExtension"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajBv))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajBw
            -> case value_ajBw of {
                 EnableExtension arg1_ajBx
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "EnableExtension"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajBx))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 DisableExtension arg1_ajBy
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "DisableExtension"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajBy))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnknownExtension arg1_ajBz
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnknownExtension"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajBz))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Extension where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajBA
            -> case value_ajBA of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ajBB
                   -> do { conKey_ajBC <- (obj_ajBB
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ajBC of {
                             _ | (conKey_ajBC
                                  == (text-1.2.1.3:Data.Text.pack "EnableExtension"))
                               -> do { val_ajBD <- (obj_ajBB
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajBD of {
                                         arg_ajBE
                                           -> (EnableExtension
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajBE)) } }
                               | (conKey_ajBC == (text-1.2.1.3:Data.Text.pack "DisableExtension"))
                               -> do { val_ajBF <- (obj_ajBB
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajBF of {
                                         arg_ajBG
                                           -> (DisableExtension
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajBG)) } }
                               | (conKey_ajBC == (text-1.2.1.3:Data.Text.pack "UnknownExtension"))
                               -> do { val_ajBH <- (obj_ajBB
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajBH of {
                                         arg_ajBI
                                           -> (UnknownExtension
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajBI)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Language.Haskell.Extension.Extension"
                                    ["EnableExtension", "DisableExtension", "UnknownExtension"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ajBC) } }
                 other_ajBJ
                   -> Data.Aeson.TH.noObjectFail
                        "Language.Haskell.Extension.Extension"
                        (Data.Aeson.TH.valueConName other_ajBJ) }
src/Distribution/PackageDescription/Aeson.hs:33:1-42: Splicing declarations
    deriveJSON defaultOptions ''KnownExtension
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON KnownExtension where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajFB
            -> case value_ajFB of {
                 OverlappingInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "OverlappingInstances")
                 UndecidableInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "UndecidableInstances")
                 IncoherentInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "IncoherentInstances")
                 DoRec
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DoRec")
                 RecursiveDo
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RecursiveDo")
                 ParallelListComp
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ParallelListComp")
                 MultiParamTypeClasses
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MultiParamTypeClasses")
                 MonomorphismRestriction
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MonomorphismRestriction")
                 FunctionalDependencies
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "FunctionalDependencies")
                 Rank2Types
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Rank2Types")
                 RankNTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RankNTypes")
                 PolymorphicComponents
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PolymorphicComponents")
                 ExistentialQuantification
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ExistentialQuantification")
                 ScopedTypeVariables
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ScopedTypeVariables")
                 PatternSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PatternSignatures")
                 ImplicitParams
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ImplicitParams")
                 FlexibleContexts
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "FlexibleContexts")
                 FlexibleInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "FlexibleInstances")
                 EmptyDataDecls
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "EmptyDataDecls")
                 CPP
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "CPP")
                 KindSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "KindSignatures")
                 BangPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "BangPatterns")
                 TypeSynonymInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TypeSynonymInstances")
                 TemplateHaskell
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TemplateHaskell")
                 ForeignFunctionInterface
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ForeignFunctionInterface")
                 Arrows
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Arrows")
                 Generics
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Generics")
                 ImplicitPrelude
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ImplicitPrelude")
                 NamedFieldPuns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NamedFieldPuns")
                 PatternGuards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PatternGuards")
                 GeneralizedNewtypeDeriving
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "GeneralizedNewtypeDeriving")
                 ExtensibleRecords
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ExtensibleRecords")
                 RestrictedTypeSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RestrictedTypeSynonyms")
                 HereDocuments
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "HereDocuments")
                 MagicHash
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MagicHash")
                 TypeFamilies
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TypeFamilies")
                 StandaloneDeriving
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "StandaloneDeriving")
                 UnicodeSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "UnicodeSyntax")
                 UnliftedFFITypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "UnliftedFFITypes")
                 InterruptibleFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "InterruptibleFFI")
                 CApiFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "CApiFFI")
                 LiberalTypeSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "LiberalTypeSynonyms")
                 TypeOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TypeOperators")
                 RecordWildCards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RecordWildCards")
                 RecordPuns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RecordPuns")
                 DisambiguateRecordFields
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DisambiguateRecordFields")
                 TraditionalRecordSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TraditionalRecordSyntax")
                 OverloadedStrings
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "OverloadedStrings")
                 GADTs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "GADTs")
                 GADTSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "GADTSyntax")
                 MonoPatBinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MonoPatBinds")
                 RelaxedPolyRec
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RelaxedPolyRec")
                 ExtendedDefaultRules
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ExtendedDefaultRules")
                 UnboxedTuples
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "UnboxedTuples")
                 DeriveDataTypeable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveDataTypeable")
                 DeriveGeneric
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveGeneric")
                 DefaultSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DefaultSignatures")
                 InstanceSigs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "InstanceSigs")
                 ConstrainedClassMethods
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ConstrainedClassMethods")
                 PackageImports
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PackageImports")
                 ImpredicativeTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ImpredicativeTypes")
                 NewQualifiedOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NewQualifiedOperators")
                 PostfixOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PostfixOperators")
                 QuasiQuotes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "QuasiQuotes")
                 TransformListComp
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TransformListComp")
                 MonadComprehensions
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MonadComprehensions")
                 ViewPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ViewPatterns")
                 XmlSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "XmlSyntax")
                 RegularPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RegularPatterns")
                 TupleSections
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "TupleSections")
                 GHCForeignImportPrim
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "GHCForeignImportPrim")
                 NPlusKPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NPlusKPatterns")
                 DoAndIfThenElse
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DoAndIfThenElse")
                 MultiWayIf
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MultiWayIf")
                 LambdaCase
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "LambdaCase")
                 RebindableSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RebindableSyntax")
                 ExplicitForAll
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ExplicitForAll")
                 DatatypeContexts
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DatatypeContexts")
                 MonoLocalBinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "MonoLocalBinds")
                 DeriveFunctor
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveFunctor")
                 DeriveTraversable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveTraversable")
                 DeriveFoldable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveFoldable")
                 NondecreasingIndentation
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NondecreasingIndentation")
                 SafeImports
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "SafeImports")
                 Safe
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Safe")
                 Trustworthy
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Trustworthy")
                 Unsafe
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "Unsafe")
                 ConstraintKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ConstraintKinds")
                 PolyKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PolyKinds")
                 DataKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DataKinds")
                 ParallelArrays
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ParallelArrays")
                 RoleAnnotations
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "RoleAnnotations")
                 OverloadedLists
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "OverloadedLists")
                 EmptyCase
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "EmptyCase")
                 AutoDeriveTypeable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "AutoDeriveTypeable")
                 NegativeLiterals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NegativeLiterals")
                 BinaryLiterals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "BinaryLiterals")
                 NumDecimals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NumDecimals")
                 NullaryTypeClasses
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NullaryTypeClasses")
                 ExplicitNamespaces
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "ExplicitNamespaces")
                 AllowAmbiguousTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "AllowAmbiguousTypes")
                 JavaScriptFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "JavaScriptFFI")
                 PatternSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PatternSynonyms")
                 PartialTypeSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "PartialTypeSignatures")
                 NamedWildCards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "NamedWildCards")
                 DeriveAnyClass
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                        (text-1.2.1.3:Data.Text.pack "DeriveAnyClass") }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajFC
            -> case value_ajFC of {
                 OverlappingInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "OverlappingInstances"))
                 UndecidableInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "UndecidableInstances"))
                 IncoherentInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "IncoherentInstances"))
                 DoRec
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DoRec"))
                 RecursiveDo
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RecursiveDo"))
                 ParallelListComp
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ParallelListComp"))
                 MultiParamTypeClasses
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MultiParamTypeClasses"))
                 MonomorphismRestriction
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MonomorphismRestriction"))
                 FunctionalDependencies
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "FunctionalDependencies"))
                 Rank2Types
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Rank2Types"))
                 RankNTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RankNTypes"))
                 PolymorphicComponents
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PolymorphicComponents"))
                 ExistentialQuantification
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ExistentialQuantification"))
                 ScopedTypeVariables
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ScopedTypeVariables"))
                 PatternSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PatternSignatures"))
                 ImplicitParams
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ImplicitParams"))
                 FlexibleContexts
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "FlexibleContexts"))
                 FlexibleInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "FlexibleInstances"))
                 EmptyDataDecls
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "EmptyDataDecls"))
                 CPP
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "CPP"))
                 KindSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "KindSignatures"))
                 BangPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "BangPatterns"))
                 TypeSynonymInstances
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TypeSynonymInstances"))
                 TemplateHaskell
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TemplateHaskell"))
                 ForeignFunctionInterface
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ForeignFunctionInterface"))
                 Arrows
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Arrows"))
                 Generics
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Generics"))
                 ImplicitPrelude
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ImplicitPrelude"))
                 NamedFieldPuns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NamedFieldPuns"))
                 PatternGuards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PatternGuards"))
                 GeneralizedNewtypeDeriving
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "GeneralizedNewtypeDeriving"))
                 ExtensibleRecords
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ExtensibleRecords"))
                 RestrictedTypeSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RestrictedTypeSynonyms"))
                 HereDocuments
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "HereDocuments"))
                 MagicHash
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MagicHash"))
                 TypeFamilies
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TypeFamilies"))
                 StandaloneDeriving
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "StandaloneDeriving"))
                 UnicodeSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "UnicodeSyntax"))
                 UnliftedFFITypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "UnliftedFFITypes"))
                 InterruptibleFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "InterruptibleFFI"))
                 CApiFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "CApiFFI"))
                 LiberalTypeSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "LiberalTypeSynonyms"))
                 TypeOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TypeOperators"))
                 RecordWildCards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RecordWildCards"))
                 RecordPuns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RecordPuns"))
                 DisambiguateRecordFields
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DisambiguateRecordFields"))
                 TraditionalRecordSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TraditionalRecordSyntax"))
                 OverloadedStrings
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "OverloadedStrings"))
                 GADTs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "GADTs"))
                 GADTSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "GADTSyntax"))
                 MonoPatBinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MonoPatBinds"))
                 RelaxedPolyRec
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RelaxedPolyRec"))
                 ExtendedDefaultRules
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ExtendedDefaultRules"))
                 UnboxedTuples
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "UnboxedTuples"))
                 DeriveDataTypeable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveDataTypeable"))
                 DeriveGeneric
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveGeneric"))
                 DefaultSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DefaultSignatures"))
                 InstanceSigs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "InstanceSigs"))
                 ConstrainedClassMethods
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ConstrainedClassMethods"))
                 PackageImports
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PackageImports"))
                 ImpredicativeTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ImpredicativeTypes"))
                 NewQualifiedOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NewQualifiedOperators"))
                 PostfixOperators
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PostfixOperators"))
                 QuasiQuotes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "QuasiQuotes"))
                 TransformListComp
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TransformListComp"))
                 MonadComprehensions
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MonadComprehensions"))
                 ViewPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ViewPatterns"))
                 XmlSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "XmlSyntax"))
                 RegularPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RegularPatterns"))
                 TupleSections
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "TupleSections"))
                 GHCForeignImportPrim
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "GHCForeignImportPrim"))
                 NPlusKPatterns
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NPlusKPatterns"))
                 DoAndIfThenElse
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DoAndIfThenElse"))
                 MultiWayIf
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MultiWayIf"))
                 LambdaCase
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "LambdaCase"))
                 RebindableSyntax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RebindableSyntax"))
                 ExplicitForAll
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ExplicitForAll"))
                 DatatypeContexts
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DatatypeContexts"))
                 MonoLocalBinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "MonoLocalBinds"))
                 DeriveFunctor
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveFunctor"))
                 DeriveTraversable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveTraversable"))
                 DeriveFoldable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveFoldable"))
                 NondecreasingIndentation
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NondecreasingIndentation"))
                 SafeImports
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "SafeImports"))
                 Safe
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Safe"))
                 Trustworthy
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Trustworthy"))
                 Unsafe
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "Unsafe"))
                 ConstraintKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ConstraintKinds"))
                 PolyKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PolyKinds"))
                 DataKinds
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DataKinds"))
                 ParallelArrays
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ParallelArrays"))
                 RoleAnnotations
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "RoleAnnotations"))
                 OverloadedLists
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "OverloadedLists"))
                 EmptyCase
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "EmptyCase"))
                 AutoDeriveTypeable
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "AutoDeriveTypeable"))
                 NegativeLiterals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NegativeLiterals"))
                 BinaryLiterals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "BinaryLiterals"))
                 NumDecimals
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NumDecimals"))
                 NullaryTypeClasses
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NullaryTypeClasses"))
                 ExplicitNamespaces
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "ExplicitNamespaces"))
                 AllowAmbiguousTypes
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "AllowAmbiguousTypes"))
                 JavaScriptFFI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "JavaScriptFFI"))
                 PatternSynonyms
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PatternSynonyms"))
                 PartialTypeSignatures
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "PartialTypeSignatures"))
                 NamedWildCards
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "NamedWildCards"))
                 DeriveAnyClass
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                           (text-1.2.1.3:Data.Text.pack "DeriveAnyClass")) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON KnownExtension where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajFD
            -> case value_ajFD of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.String txt_ajFE
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "OverlappingInstances"))
                   -> pure OverlappingInstances
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "UndecidableInstances"))
                   -> pure UndecidableInstances
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "IncoherentInstances"))
                   -> pure IncoherentInstances
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DoRec")) -> pure DoRec
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RecursiveDo"))
                   -> pure RecursiveDo
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ParallelListComp"))
                   -> pure ParallelListComp
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "MultiParamTypeClasses"))
                   -> pure MultiParamTypeClasses
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "MonomorphismRestriction"))
                   -> pure MonomorphismRestriction
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "FunctionalDependencies"))
                   -> pure FunctionalDependencies
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Rank2Types"))
                   -> pure Rank2Types
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RankNTypes"))
                   -> pure RankNTypes
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "PolymorphicComponents"))
                   -> pure PolymorphicComponents
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "ExistentialQuantification"))
                   -> pure ExistentialQuantification
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ScopedTypeVariables"))
                   -> pure ScopedTypeVariables
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PatternSignatures"))
                   -> pure PatternSignatures
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ImplicitParams"))
                   -> pure ImplicitParams
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "FlexibleContexts"))
                   -> pure FlexibleContexts
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "FlexibleInstances"))
                   -> pure FlexibleInstances
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "EmptyDataDecls"))
                   -> pure EmptyDataDecls
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "CPP")) -> pure CPP
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "KindSignatures"))
                   -> pure KindSignatures
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "BangPatterns"))
                   -> pure BangPatterns
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "TypeSynonymInstances"))
                   -> pure TypeSynonymInstances
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "TemplateHaskell"))
                   -> pure TemplateHaskell
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "ForeignFunctionInterface"))
                   -> pure ForeignFunctionInterface
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Arrows"))
                   -> pure Arrows
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Generics"))
                   -> pure Generics
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ImplicitPrelude"))
                   -> pure ImplicitPrelude
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NamedFieldPuns"))
                   -> pure NamedFieldPuns
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PatternGuards"))
                   -> pure PatternGuards
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "GeneralizedNewtypeDeriving"))
                   -> pure GeneralizedNewtypeDeriving
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ExtensibleRecords"))
                   -> pure ExtensibleRecords
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "RestrictedTypeSynonyms"))
                   -> pure RestrictedTypeSynonyms
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "HereDocuments"))
                   -> pure HereDocuments
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "MagicHash"))
                   -> pure MagicHash
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "TypeFamilies"))
                   -> pure TypeFamilies
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "StandaloneDeriving"))
                   -> pure StandaloneDeriving
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "UnicodeSyntax"))
                   -> pure UnicodeSyntax
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "UnliftedFFITypes"))
                   -> pure UnliftedFFITypes
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "InterruptibleFFI"))
                   -> pure InterruptibleFFI
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "CApiFFI"))
                   -> pure CApiFFI
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "LiberalTypeSynonyms"))
                   -> pure LiberalTypeSynonyms
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "TypeOperators"))
                   -> pure TypeOperators
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RecordWildCards"))
                   -> pure RecordWildCards
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RecordPuns"))
                   -> pure RecordPuns
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "DisambiguateRecordFields"))
                   -> pure DisambiguateRecordFields
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "TraditionalRecordSyntax"))
                   -> pure TraditionalRecordSyntax
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "OverloadedStrings"))
                   -> pure OverloadedStrings
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "GADTs")) -> pure GADTs
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "GADTSyntax"))
                   -> pure GADTSyntax
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "MonoPatBinds"))
                   -> pure MonoPatBinds
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RelaxedPolyRec"))
                   -> pure RelaxedPolyRec
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "ExtendedDefaultRules"))
                   -> pure ExtendedDefaultRules
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "UnboxedTuples"))
                   -> pure UnboxedTuples
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveDataTypeable"))
                   -> pure DeriveDataTypeable
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveGeneric"))
                   -> pure DeriveGeneric
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DefaultSignatures"))
                   -> pure DefaultSignatures
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "InstanceSigs"))
                   -> pure InstanceSigs
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "ConstrainedClassMethods"))
                   -> pure ConstrainedClassMethods
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PackageImports"))
                   -> pure PackageImports
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ImpredicativeTypes"))
                   -> pure ImpredicativeTypes
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "NewQualifiedOperators"))
                   -> pure NewQualifiedOperators
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PostfixOperators"))
                   -> pure PostfixOperators
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "QuasiQuotes"))
                   -> pure QuasiQuotes
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "TransformListComp"))
                   -> pure TransformListComp
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "MonadComprehensions"))
                   -> pure MonadComprehensions
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ViewPatterns"))
                   -> pure ViewPatterns
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "XmlSyntax"))
                   -> pure XmlSyntax
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RegularPatterns"))
                   -> pure RegularPatterns
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "TupleSections"))
                   -> pure TupleSections
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "GHCForeignImportPrim"))
                   -> pure GHCForeignImportPrim
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NPlusKPatterns"))
                   -> pure NPlusKPatterns
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DoAndIfThenElse"))
                   -> pure DoAndIfThenElse
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "MultiWayIf"))
                   -> pure MultiWayIf
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "LambdaCase"))
                   -> pure LambdaCase
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RebindableSyntax"))
                   -> pure RebindableSyntax
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ExplicitForAll"))
                   -> pure ExplicitForAll
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DatatypeContexts"))
                   -> pure DatatypeContexts
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "MonoLocalBinds"))
                   -> pure MonoLocalBinds
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveFunctor"))
                   -> pure DeriveFunctor
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveTraversable"))
                   -> pure DeriveTraversable
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveFoldable"))
                   -> pure DeriveFoldable
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "NondecreasingIndentation"))
                   -> pure NondecreasingIndentation
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "SafeImports"))
                   -> pure SafeImports
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Safe")) -> pure Safe
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Trustworthy"))
                   -> pure Trustworthy
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "Unsafe"))
                   -> pure Unsafe
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ConstraintKinds"))
                   -> pure ConstraintKinds
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PolyKinds"))
                   -> pure PolyKinds
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DataKinds"))
                   -> pure DataKinds
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ParallelArrays"))
                   -> pure ParallelArrays
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "RoleAnnotations"))
                   -> pure RoleAnnotations
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "OverloadedLists"))
                   -> pure OverloadedLists
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "EmptyCase"))
                   -> pure EmptyCase
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "AutoDeriveTypeable"))
                   -> pure AutoDeriveTypeable
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NegativeLiterals"))
                   -> pure NegativeLiterals
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "BinaryLiterals"))
                   -> pure BinaryLiterals
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NumDecimals"))
                   -> pure NumDecimals
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NullaryTypeClasses"))
                   -> pure NullaryTypeClasses
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "ExplicitNamespaces"))
                   -> pure ExplicitNamespaces
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "AllowAmbiguousTypes"))
                   -> pure AllowAmbiguousTypes
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "JavaScriptFFI"))
                   -> pure JavaScriptFFI
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "PatternSynonyms"))
                   -> pure PatternSynonyms
                   | (txt_ajFE
                      == (text-1.2.1.3:Data.Text.pack "PartialTypeSignatures"))
                   -> pure PartialTypeSignatures
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "NamedWildCards"))
                   -> pure NamedWildCards
                   | (txt_ajFE == (text-1.2.1.3:Data.Text.pack "DeriveAnyClass"))
                   -> pure DeriveAnyClass
                   | otherwise
                   -> Data.Aeson.TH.noMatchFail
                        "Language.Haskell.Extension.KnownExtension"
                        (text-1.2.1.3:Data.Text.Show.unpack txt_ajFE)
                 other_ajFF
                   -> Data.Aeson.TH.noStringFail
                        "Language.Haskell.Extension.KnownExtension"
                        (Data.Aeson.TH.valueConName other_ajFF) }
src/Distribution/PackageDescription/Aeson.hs:34:1-41: Splicing declarations
    deriveJSON defaultOptions ''BenchmarkType
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON BenchmarkType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajTS
            -> case value_ajTS of {
                 BenchmarkTypeExe arg1_ajTT
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BenchmarkTypeExe"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajTT))]
                 BenchmarkTypeUnknown arg1_ajTU arg2_ajTV
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BenchmarkTypeUnknown"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ajTW <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajTW
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajTU);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajTW
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ajTV);
                                        return mv_ajTW }))))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajTX
            -> case value_ajTX of {
                 BenchmarkTypeExe arg1_ajTY
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BenchmarkTypeExe"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajTY))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 BenchmarkTypeUnknown arg1_ajTZ arg2_ajU0
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BenchmarkTypeUnknown"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ajTZ)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ajU0)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON BenchmarkType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajU1
            -> case value_ajU1 of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ajU2
                   -> do { conKey_ajU3 <- (obj_ajU2
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ajU3 of {
                             _ | (conKey_ajU3
                                  == (text-1.2.1.3:Data.Text.pack "BenchmarkTypeExe"))
                               -> do { val_ajU4 <- (obj_ajU2
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajU4 of {
                                         arg_ajU5
                                           -> (BenchmarkTypeExe
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajU5)) } }
                               | (conKey_ajU3
                                  == (text-1.2.1.3:Data.Text.pack "BenchmarkTypeUnknown"))
                               -> do { val_ajU6 <- (obj_ajU2
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajU6 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ajU7
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ajU7)
                                                  == 2) then
                                                  ((BenchmarkTypeUnknown
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ajU7
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ajU7
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "BenchmarkTypeUnknown"
                                                    "Distribution.PackageDescription.BenchmarkType"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ajU7))
                                         other_ajU8
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BenchmarkTypeUnknown"
                                                "Distribution.PackageDescription.BenchmarkType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ajU8) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.BenchmarkType"
                                    ["BenchmarkTypeExe", "BenchmarkTypeUnknown"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ajU3) } }
                 other_ajU9
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.BenchmarkType"
                        (Data.Aeson.TH.valueConName other_ajU9) }
src/Distribution/PackageDescription/Aeson.hs:35:1-46: Splicing declarations
    deriveJSON defaultOptions ''BenchmarkInterface
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON BenchmarkInterface where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ajYE
            -> case value_ajYE of {
                 BenchmarkExeV10 arg1_ajYF arg2_ajYG
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BenchmarkExeV10"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_ajYH <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajYH
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajYF);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_ajYH
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_ajYG);
                                        return mv_ajYH }))))]
                 BenchmarkUnsupported arg1_ajYI
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "BenchmarkUnsupported"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ajYI))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ajYJ
            -> case value_ajYJ of {
                 BenchmarkExeV10 arg1_ajYK arg2_ajYL
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BenchmarkExeV10"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_ajYK)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_ajYL)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 BenchmarkUnsupported arg1_ajYM
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "BenchmarkUnsupported"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ajYM))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON BenchmarkInterface where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ajYN
            -> case value_ajYN of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ajYO
                   -> do { conKey_ajYP <- (obj_ajYO
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ajYP of {
                             _ | (conKey_ajYP
                                  == (text-1.2.1.3:Data.Text.pack "BenchmarkExeV10"))
                               -> do { val_ajYQ <- (obj_ajYO
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajYQ of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ajYR
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_ajYR)
                                                  == 2) then
                                                  ((BenchmarkExeV10
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_ajYR
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_ajYR
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "BenchmarkExeV10"
                                                    "Distribution.PackageDescription.BenchmarkInterface"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_ajYR))
                                         other_ajYS
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "BenchmarkExeV10"
                                                "Distribution.PackageDescription.BenchmarkInterface"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ajYS) } }
                               | (conKey_ajYP
                                  == (text-1.2.1.3:Data.Text.pack "BenchmarkUnsupported"))
                               -> do { val_ajYT <- (obj_ajYO
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ajYT of {
                                         arg_ajYU
                                           -> (BenchmarkUnsupported
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ajYU)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.BenchmarkInterface"
                                    ["BenchmarkExeV10", "BenchmarkUnsupported"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ajYP) } }
                 other_ajYV
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.BenchmarkInterface"
                        (Data.Aeson.TH.valueConName other_ajYV) }
src/Distribution/PackageDescription/Aeson.hs:36:1-37: Splicing declarations
    deriveJSON defaultOptions ''Benchmark
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Benchmark where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ak3q
            -> case value_ak3q of {
                 Benchmark arg1_ak3r arg2_ak3s arg3_ak3t arg4_ak3u
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "benchmarkName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_ak3r),
                         ((text-1.2.1.3:Data.Text.pack "benchmarkInterface")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_ak3s),
                         ((text-1.2.1.3:Data.Text.pack "benchmarkBuildInfo")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_ak3t),
                         ((text-1.2.1.3:Data.Text.pack "benchmarkEnabled")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_ak3u)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ak3v
            -> case value_ak3v of {
                 Benchmark arg1_ak3w arg2_ak3x arg3_ak3y arg4_ak3z
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "benchmarkName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_ak3w))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "benchmarkInterface"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_ak3x))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "benchmarkBuildInfo"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_ak3y))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "benchmarkEnabled"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_ak3z)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Benchmark where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ak3A
            -> case value_ak3A of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_ak3B
                   -> ((((Benchmark
                          <$>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.Benchmark"
                               "Benchmark"
                               recObj_ak3B
                               (text-1.2.1.3:Data.Text.pack "benchmarkName")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.Benchmark"
                              "Benchmark"
                              recObj_ak3B
                              (text-1.2.1.3:Data.Text.pack "benchmarkInterface")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.Benchmark"
                             "Benchmark"
                             recObj_ak3B
                             (text-1.2.1.3:Data.Text.pack "benchmarkBuildInfo")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.Benchmark"
                            "Benchmark"
                            recObj_ak3B
                            (text-1.2.1.3:Data.Text.pack "benchmarkEnabled")))
                 other_ak3C
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "Benchmark"
                        "Distribution.PackageDescription.Benchmark"
                        "Object"
                        (Data.Aeson.TH.valueConName other_ak3C) }
src/Distribution/PackageDescription/Aeson.hs:37:1-37: Splicing declarations
    deriveJSON defaultOptions ''BuildType
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON BuildType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_ak5L
            -> case value_ak5L of {
                 Simple
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Simple"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Configure
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Configure"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Make
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Make"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Custom
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Custom"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 UnknownBuildType arg1_ak5M
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "UnknownBuildType"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_ak5M))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_ak5N
            -> case value_ak5N of {
                 Simple
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Simple"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Configure
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Configure"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Make
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Make"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Custom
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Custom"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 UnknownBuildType arg1_ak5O
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "UnknownBuildType"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_ak5O))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON BuildType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_ak5P
            -> case value_ak5P of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_ak5Q
                   -> do { conKey_ak5R <- (obj_ak5Q
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_ak5R of {
                             _ | (conKey_ak5R == (text-1.2.1.3:Data.Text.pack "Simple"))
                               -> do { val_ak5S <- (obj_ak5Q
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ak5S of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ak5T
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ak5T
                                           -> pure Simple
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Simple"
                                                "Distribution.PackageDescription.BuildType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ak5T))
                                         other_ak5U
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Simple"
                                                "Distribution.PackageDescription.BuildType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ak5U) } }
                               | (conKey_ak5R == (text-1.2.1.3:Data.Text.pack "Configure"))
                               -> do { val_ak5V <- (obj_ak5Q
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ak5V of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ak5W
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ak5W
                                           -> pure Configure
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Configure"
                                                "Distribution.PackageDescription.BuildType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ak5W))
                                         other_ak5X
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Configure"
                                                "Distribution.PackageDescription.BuildType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ak5X) } }
                               | (conKey_ak5R == (text-1.2.1.3:Data.Text.pack "Make"))
                               -> do { val_ak5Y <- (obj_ak5Q
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ak5Y of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ak5Z
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ak5Z
                                           -> pure Make
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Make"
                                                "Distribution.PackageDescription.BuildType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ak5Z))
                                         other_ak60
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Make"
                                                "Distribution.PackageDescription.BuildType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ak60) } }
                               | (conKey_ak5R == (text-1.2.1.3:Data.Text.pack "Custom"))
                               -> do { val_ak61 <- (obj_ak5Q
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ak61 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_ak62
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_ak62
                                           -> pure Custom
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Custom"
                                                "Distribution.PackageDescription.BuildType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_ak62))
                                         other_ak63
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Custom"
                                                "Distribution.PackageDescription.BuildType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_ak63) } }
                               | (conKey_ak5R == (text-1.2.1.3:Data.Text.pack "UnknownBuildType"))
                               -> do { val_ak64 <- (obj_ak5Q
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_ak64 of {
                                         arg_ak65
                                           -> (UnknownBuildType
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_ak65)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.BuildType"
                                    ["Simple", "Configure", "Make", "Custom", "UnknownBuildType"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_ak5R) } }
                 other_ak66
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.BuildType"
                        (Data.Aeson.TH.valueConName other_ak66) }
src/Distribution/PackageDescription/Aeson.hs:38:1-42: Splicing declarations
    deriveJSON defaultOptions ''ModuleReexport
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON ModuleReexport where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akd4
            -> case value_akd4 of {
                 ModuleReexport arg1_akd5 arg2_akd6 arg3_akd7
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "moduleReexportOriginalPackage")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akd5),
                         ((text-1.2.1.3:Data.Text.pack "moduleReexportOriginalName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akd6),
                         ((text-1.2.1.3:Data.Text.pack "moduleReexportName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akd7)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akd8
            -> case value_akd8 of {
                 ModuleReexport arg1_akd9 arg2_akda arg3_akdb
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack
                                          "moduleReexportOriginalPackage"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akd9))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "moduleReexportOriginalName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akda))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "moduleReexportName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akdb)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON ModuleReexport where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akdc
            -> case value_akdc of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akdd
                   -> (((ModuleReexport
                         <$>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.ModuleReexport"
                              "ModuleReexport"
                              recObj_akdd
                              (text-1.2.1.3:Data.Text.pack "moduleReexportOriginalPackage")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.ModuleReexport"
                             "ModuleReexport"
                             recObj_akdd
                             (text-1.2.1.3:Data.Text.pack "moduleReexportOriginalName")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.ModuleReexport"
                            "ModuleReexport"
                            recObj_akdd
                            (text-1.2.1.3:Data.Text.pack "moduleReexportName")))
                 other_akde
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "ModuleReexport"
                        "Distribution.PackageDescription.ModuleReexport"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akde) }
src/Distribution/PackageDescription/Aeson.hs:39:1-36: Splicing declarations
    deriveJSON defaultOptions ''RepoKind
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON RepoKind where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akeZ
            -> case value_akeZ of {
                 RepoHead
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "RepoHead"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 RepoThis
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "RepoThis"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 RepoKindUnknown arg1_akf0
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "RepoKindUnknown"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akf0))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akf1
            -> case value_akf1 of {
                 RepoHead
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "RepoHead"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 RepoThis
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "RepoThis"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 RepoKindUnknown arg1_akf2
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "RepoKindUnknown"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_akf2))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON RepoKind where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akf3
            -> case value_akf3 of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_akf4
                   -> do { conKey_akf5 <- (obj_akf4
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_akf5 of {
                             _ | (conKey_akf5 == (text-1.2.1.3:Data.Text.pack "RepoHead"))
                               -> do { val_akf6 <- (obj_akf4
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akf6 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akf7
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akf7
                                           -> pure RepoHead
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "RepoHead"
                                                "Distribution.PackageDescription.RepoKind"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akf7))
                                         other_akf8
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "RepoHead"
                                                "Distribution.PackageDescription.RepoKind"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akf8) } }
                               | (conKey_akf5 == (text-1.2.1.3:Data.Text.pack "RepoThis"))
                               -> do { val_akf9 <- (obj_akf4
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akf9 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akfa
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akfa
                                           -> pure RepoThis
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "RepoThis"
                                                "Distribution.PackageDescription.RepoKind"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akfa))
                                         other_akfb
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "RepoThis"
                                                "Distribution.PackageDescription.RepoKind"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akfb) } }
                               | (conKey_akf5 == (text-1.2.1.3:Data.Text.pack "RepoKindUnknown"))
                               -> do { val_akfc <- (obj_akf4
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akfc of {
                                         arg_akfd
                                           -> (RepoKindUnknown
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_akfd)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.RepoKind"
                                    ["RepoHead", "RepoThis", "RepoKindUnknown"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_akf5) } }
                 other_akfe
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.RepoKind"
                        (Data.Aeson.TH.valueConName other_akfe) }
src/Distribution/PackageDescription/Aeson.hs:40:1-36: Splicing declarations
    deriveJSON defaultOptions ''RepoType
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON RepoType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akjA
            -> case value_akjA of {
                 Darcs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Darcs"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Git
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Git"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 SVN
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "SVN"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 CVS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "CVS"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Mercurial
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Mercurial"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 GnuArch
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "GnuArch"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Bazaar
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Bazaar"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Monotone
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Monotone"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OtherRepoType arg1_akjB
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OtherRepoType"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akjB))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akjC
            -> case value_akjC of {
                 Darcs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Darcs"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Git
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Git"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 SVN
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "SVN"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 CVS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "CVS"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Mercurial
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Mercurial"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 GnuArch
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "GnuArch"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Bazaar
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Bazaar"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Monotone
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Monotone"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OtherRepoType arg1_akjD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OtherRepoType"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_akjD))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON RepoType where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akjE
            -> case value_akjE of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_akjF
                   -> do { conKey_akjG <- (obj_akjF
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_akjG of {
                             _ | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "Darcs"))
                               -> do { val_akjH <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjH of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjI
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjI
                                           -> pure Darcs
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Darcs"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjI))
                                         other_akjJ
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Darcs"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjJ) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "Git"))
                               -> do { val_akjK <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjK of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjL
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjL
                                           -> pure Git
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Git"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjL))
                                         other_akjM
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Git"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjM) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "SVN"))
                               -> do { val_akjN <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjN of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjO
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjO
                                           -> pure SVN
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "SVN"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjO))
                                         other_akjP
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "SVN"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjP) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "CVS"))
                               -> do { val_akjQ <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjQ of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjR
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjR
                                           -> pure CVS
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "CVS"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjR))
                                         other_akjS
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "CVS"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjS) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "Mercurial"))
                               -> do { val_akjT <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjT of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjU
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjU
                                           -> pure Mercurial
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Mercurial"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjU))
                                         other_akjV
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Mercurial"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjV) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "GnuArch"))
                               -> do { val_akjW <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjW of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akjX
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akjX
                                           -> pure GnuArch
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GnuArch"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akjX))
                                         other_akjY
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "GnuArch"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akjY) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "Bazaar"))
                               -> do { val_akjZ <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akjZ of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akk0
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akk0
                                           -> pure Bazaar
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Bazaar"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akk0))
                                         other_akk1
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Bazaar"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akk1) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "Monotone"))
                               -> do { val_akk2 <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akk2 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akk3
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_akk3
                                           -> pure Monotone
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Monotone"
                                                "Distribution.PackageDescription.RepoType"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_akk3))
                                         other_akk4
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Monotone"
                                                "Distribution.PackageDescription.RepoType"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akk4) } }
                               | (conKey_akjG == (text-1.2.1.3:Data.Text.pack "OtherRepoType"))
                               -> do { val_akk5 <- (obj_akjF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akk5 of {
                                         arg_akk6
                                           -> (OtherRepoType
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_akk6)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.RepoType"
                                    ["Darcs", "Git", "SVN", "CVS", "Mercurial", "GnuArch", "Bazaar",
                                     "Monotone", "OtherRepoType"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_akjG) } }
                 other_akk7
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.RepoType"
                        (Data.Aeson.TH.valueConName other_akk7) }
src/Distribution/PackageDescription/Aeson.hs:41:1-38: Splicing declarations
    deriveJSON defaultOptions ''Executable
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Executable where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akwj
            -> case value_akwj of {
                 Executable arg1_akwk arg2_akwl arg3_akwm
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "exeName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akwk),
                         ((text-1.2.1.3:Data.Text.pack "modulePath")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akwl),
                         ((text-1.2.1.3:Data.Text.pack "buildInfo")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akwm)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akwn
            -> case value_akwn of {
                 Executable arg1_akwo arg2_akwp arg3_akwq
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "exeName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akwo))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "modulePath"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akwp))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "buildInfo"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akwq)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Executable where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akwr
            -> case value_akwr of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akws
                   -> (((Executable
                         <$>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.Executable"
                              "Executable"
                              recObj_akws
                              (text-1.2.1.3:Data.Text.pack "exeName")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.Executable"
                             "Executable"
                             recObj_akws
                             (text-1.2.1.3:Data.Text.pack "modulePath")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.Executable"
                            "Executable"
                            recObj_akws
                            (text-1.2.1.3:Data.Text.pack "buildInfo")))
                 other_akwt
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "Executable"
                        "Distribution.PackageDescription.Executable"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akwt) }
src/Distribution/PackageDescription/Aeson.hs:42:1-38: Splicing declarations
    deriveJSON defaultOptions ''SourceRepo
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON SourceRepo where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akye
            -> case value_akye of {
                 SourceRepo arg1_akyf
                            arg2_akyg
                            arg3_akyh
                            arg4_akyi
                            arg5_akyj
                            arg6_akyk
                            arg7_akyl
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "repoKind")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akyf),
                         ((text-1.2.1.3:Data.Text.pack "repoType")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akyg),
                         ((text-1.2.1.3:Data.Text.pack "repoLocation")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akyh),
                         ((text-1.2.1.3:Data.Text.pack "repoModule")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_akyi),
                         ((text-1.2.1.3:Data.Text.pack "repoBranch")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg5_akyj),
                         ((text-1.2.1.3:Data.Text.pack "repoTag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg6_akyk),
                         ((text-1.2.1.3:Data.Text.pack "repoSubdir")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg7_akyl)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akym
            -> case value_akym of {
                 SourceRepo arg1_akyn
                            arg2_akyo
                            arg3_akyp
                            arg4_akyq
                            arg5_akyr
                            arg6_akys
                            arg7_akyt
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoKind"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akyn))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoType"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akyo))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoLocation"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akyp))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoModule"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_akyq))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoBranch"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg5_akyr))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoTag"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg6_akys))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "repoSubdir"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg7_akyt)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON SourceRepo where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akyu
            -> case value_akyu of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akyv
                   -> (((((((SourceRepo
                             <$>
                               (Data.Aeson.TH.lookupField
                                  "Distribution.PackageDescription.SourceRepo"
                                  "SourceRepo"
                                  recObj_akyv
                                  (text-1.2.1.3:Data.Text.pack "repoKind")))
                            <*>
                              (Data.Aeson.TH.lookupField
                                 "Distribution.PackageDescription.SourceRepo"
                                 "SourceRepo"
                                 recObj_akyv
                                 (text-1.2.1.3:Data.Text.pack "repoType")))
                           <*>
                             (Data.Aeson.TH.lookupField
                                "Distribution.PackageDescription.SourceRepo"
                                "SourceRepo"
                                recObj_akyv
                                (text-1.2.1.3:Data.Text.pack "repoLocation")))
                          <*>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.SourceRepo"
                               "SourceRepo"
                               recObj_akyv
                               (text-1.2.1.3:Data.Text.pack "repoModule")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.SourceRepo"
                              "SourceRepo"
                              recObj_akyv
                              (text-1.2.1.3:Data.Text.pack "repoBranch")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.SourceRepo"
                             "SourceRepo"
                             recObj_akyv
                             (text-1.2.1.3:Data.Text.pack "repoTag")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.SourceRepo"
                            "SourceRepo"
                            recObj_akyv
                            (text-1.2.1.3:Data.Text.pack "repoSubdir")))
                 other_akyw
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "SourceRepo"
                        "Distribution.PackageDescription.SourceRepo"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akyw) }
src/Distribution/PackageDescription/Aeson.hs:43:1-35: Splicing declarations
    deriveJSON defaultOptions ''Library
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Library where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akBP
            -> case value_akBP of {
                 Library arg1_akBQ arg2_akBR arg3_akBS arg4_akBT arg5_akBU arg6_akBV
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "exposedModules")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akBQ),
                         ((text-1.2.1.3:Data.Text.pack "reexportedModules")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akBR),
                         ((text-1.2.1.3:Data.Text.pack "requiredSignatures")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akBS),
                         ((text-1.2.1.3:Data.Text.pack "exposedSignatures")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_akBT),
                         ((text-1.2.1.3:Data.Text.pack "libExposed")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg5_akBU),
                         ((text-1.2.1.3:Data.Text.pack "libBuildInfo")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg6_akBV)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akBW
            -> case value_akBW of {
                 Library arg1_akBX arg2_akBY arg3_akBZ arg4_akC0 arg5_akC1 arg6_akC2
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "exposedModules"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akBX))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "reexportedModules"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akBY))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "requiredSignatures"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akBZ))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "exposedSignatures"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_akC0))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "libExposed"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg5_akC1))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "libBuildInfo"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg6_akC2)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Library where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akC3
            -> case value_akC3 of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akC4
                   -> ((((((Library
                            <$>
                              (Data.Aeson.TH.lookupField
                                 "Distribution.PackageDescription.Library"
                                 "Library"
                                 recObj_akC4
                                 (text-1.2.1.3:Data.Text.pack "exposedModules")))
                           <*>
                             (Data.Aeson.TH.lookupField
                                "Distribution.PackageDescription.Library"
                                "Library"
                                recObj_akC4
                                (text-1.2.1.3:Data.Text.pack "reexportedModules")))
                          <*>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.Library"
                               "Library"
                               recObj_akC4
                               (text-1.2.1.3:Data.Text.pack "requiredSignatures")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.Library"
                              "Library"
                              recObj_akC4
                              (text-1.2.1.3:Data.Text.pack "exposedSignatures")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.Library"
                             "Library"
                             recObj_akC4
                             (text-1.2.1.3:Data.Text.pack "libExposed")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.Library"
                            "Library"
                            recObj_akC4
                            (text-1.2.1.3:Data.Text.pack "libBuildInfo")))
                 other_akC5
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "Library"
                        "Distribution.PackageDescription.Library"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akC5) }
src/Distribution/PackageDescription/Aeson.hs:44:1-37: Splicing declarations
    deriveJSON defaultOptions ''TestSuite
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON TestSuite where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akF0
            -> case value_akF0 of {
                 TestSuite arg1_akF1 arg2_akF2 arg3_akF3 arg4_akF4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "testName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akF1),
                         ((text-1.2.1.3:Data.Text.pack "testInterface")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akF2),
                         ((text-1.2.1.3:Data.Text.pack "testBuildInfo")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akF3),
                         ((text-1.2.1.3:Data.Text.pack "testEnabled")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_akF4)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akF5
            -> case value_akF5 of {
                 TestSuite arg1_akF6 arg2_akF7 arg3_akF8 arg4_akF9
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akF6))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testInterface"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akF7))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testBuildInfo"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akF8))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testEnabled"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_akF9)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON TestSuite where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akFa
            -> case value_akFa of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akFb
                   -> ((((TestSuite
                          <$>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.TestSuite"
                               "TestSuite"
                               recObj_akFb
                               (text-1.2.1.3:Data.Text.pack "testName")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.TestSuite"
                              "TestSuite"
                              recObj_akFb
                              (text-1.2.1.3:Data.Text.pack "testInterface")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.TestSuite"
                             "TestSuite"
                             recObj_akFb
                             (text-1.2.1.3:Data.Text.pack "testBuildInfo")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.TestSuite"
                            "TestSuite"
                            recObj_akFb
                            (text-1.2.1.3:Data.Text.pack "testEnabled")))
                 other_akFc
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "TestSuite"
                        "Distribution.PackageDescription.TestSuite"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akFc) }
src/Distribution/PackageDescription/Aeson.hs:45:1-46: Splicing declarations
    deriveJSON defaultOptions ''PackageDescription
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON PackageDescription where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akHv
            -> case value_akHv of {
                 PackageDescription arg1_akHw
                                    arg2_akHx
                                    arg3_akHy
                                    arg4_akHz
                                    arg5_akHA
                                    arg6_akHB
                                    arg7_akHC
                                    arg8_akHD
                                    arg9_akHE
                                    arg10_akHF
                                    arg11_akHG
                                    arg12_akHH
                                    arg13_akHI
                                    arg14_akHJ
                                    arg15_akHK
                                    arg16_akHL
                                    arg17_akHM
                                    arg18_akHN
                                    arg19_akHO
                                    arg20_akHP
                                    arg21_akHQ
                                    arg22_akHR
                                    arg23_akHS
                                    arg24_akHT
                                    arg25_akHU
                                    arg26_akHV
                                    arg27_akHW
                                    arg28_akHX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "package")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akHw),
                         ((text-1.2.1.3:Data.Text.pack "license")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akHx),
                         ((text-1.2.1.3:Data.Text.pack "licenseFiles")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akHy),
                         ((text-1.2.1.3:Data.Text.pack "copyright")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_akHz),
                         ((text-1.2.1.3:Data.Text.pack "maintainer")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg5_akHA),
                         ((text-1.2.1.3:Data.Text.pack "author")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg6_akHB),
                         ((text-1.2.1.3:Data.Text.pack "stability")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg7_akHC),
                         ((text-1.2.1.3:Data.Text.pack "testedWith")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg8_akHD),
                         ((text-1.2.1.3:Data.Text.pack "homepage")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg9_akHE),
                         ((text-1.2.1.3:Data.Text.pack "pkgUrl")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg10_akHF),
                         ((text-1.2.1.3:Data.Text.pack "bugReports")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg11_akHG),
                         ((text-1.2.1.3:Data.Text.pack "sourceRepos")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg12_akHH),
                         ((text-1.2.1.3:Data.Text.pack "synopsis")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg13_akHI),
                         ((text-1.2.1.3:Data.Text.pack "description")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg14_akHJ),
                         ((text-1.2.1.3:Data.Text.pack "category")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg15_akHK),
                         ((text-1.2.1.3:Data.Text.pack "customFieldsPD")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg16_akHL),
                         ((text-1.2.1.3:Data.Text.pack "buildDepends")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg17_akHM),
                         ((text-1.2.1.3:Data.Text.pack "specVersionRaw")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg18_akHN),
                         ((text-1.2.1.3:Data.Text.pack "buildType")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg19_akHO),
                         ((text-1.2.1.3:Data.Text.pack "library")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg20_akHP),
                         ((text-1.2.1.3:Data.Text.pack "executables")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg21_akHQ),
                         ((text-1.2.1.3:Data.Text.pack "testSuites")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg22_akHR),
                         ((text-1.2.1.3:Data.Text.pack "benchmarks")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg23_akHS),
                         ((text-1.2.1.3:Data.Text.pack "dataFiles")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg24_akHT),
                         ((text-1.2.1.3:Data.Text.pack "dataDir")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg25_akHU),
                         ((text-1.2.1.3:Data.Text.pack "extraSrcFiles")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg26_akHV),
                         ((text-1.2.1.3:Data.Text.pack "extraTmpFiles")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg27_akHW),
                         ((text-1.2.1.3:Data.Text.pack "extraDocFiles")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg28_akHX)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akHY
            -> case value_akHY of {
                 PackageDescription arg1_akHZ
                                    arg2_akI0
                                    arg3_akI1
                                    arg4_akI2
                                    arg5_akI3
                                    arg6_akI4
                                    arg7_akI5
                                    arg8_akI6
                                    arg9_akI7
                                    arg10_akI8
                                    arg11_akI9
                                    arg12_akIa
                                    arg13_akIb
                                    arg14_akIc
                                    arg15_akId
                                    arg16_akIe
                                    arg17_akIf
                                    arg18_akIg
                                    arg19_akIh
                                    arg20_akIi
                                    arg21_akIj
                                    arg22_akIk
                                    arg23_akIl
                                    arg24_akIm
                                    arg25_akIn
                                    arg26_akIo
                                    arg27_akIp
                                    arg28_akIq
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "package"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akHZ))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "license"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akI0))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "licenseFiles"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akI1))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "copyright"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_akI2))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "maintainer"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg5_akI3))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "author"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg6_akI4))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "stability"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg7_akI5))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testedWith"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg8_akI6))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "homepage"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg9_akI7))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "pkgUrl"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg10_akI8))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "bugReports"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg11_akI9))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "sourceRepos"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg12_akIa))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "synopsis"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg13_akIb))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "description"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg14_akIc))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "category"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg15_akId))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "customFieldsPD"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg16_akIe))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "buildDepends"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg17_akIf))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "specVersionRaw"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg18_akIg))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "buildType"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg19_akIh))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "library"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg20_akIi))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "executables"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg21_akIj))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "testSuites"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg22_akIk))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "benchmarks"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg23_akIl))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "dataFiles"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg24_akIm))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "dataDir"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg25_akIn))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraSrcFiles"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg26_akIo))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraTmpFiles"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg27_akIp))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "extraDocFiles"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg28_akIq)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON PackageDescription where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akIr
            -> case value_akIr of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akIs
                   -> ((((((((((((((((((((((((((((PackageDescription
                                                  <$>
                                                    (Data.Aeson.TH.lookupField
                                                       "Distribution.PackageDescription.PackageDescription"
                                                       "PackageDescription"
                                                       recObj_akIs
                                                       (text-1.2.1.3:Data.Text.pack "package")))
                                                 <*>
                                                   (Data.Aeson.TH.lookupField
                                                      "Distribution.PackageDescription.PackageDescription"
                                                      "PackageDescription"
                                                      recObj_akIs
                                                      (text-1.2.1.3:Data.Text.pack "license")))
                                                <*>
                                                  (Data.Aeson.TH.lookupField
                                                     "Distribution.PackageDescription.PackageDescription"
                                                     "PackageDescription"
                                                     recObj_akIs
                                                     (text-1.2.1.3:Data.Text.pack "licenseFiles")))
                                               <*>
                                                 (Data.Aeson.TH.lookupField
                                                    "Distribution.PackageDescription.PackageDescription"
                                                    "PackageDescription"
                                                    recObj_akIs
                                                    (text-1.2.1.3:Data.Text.pack "copyright")))
                                              <*>
                                                (Data.Aeson.TH.lookupField
                                                   "Distribution.PackageDescription.PackageDescription"
                                                   "PackageDescription"
                                                   recObj_akIs
                                                   (text-1.2.1.3:Data.Text.pack "maintainer")))
                                             <*>
                                               (Data.Aeson.TH.lookupField
                                                  "Distribution.PackageDescription.PackageDescription"
                                                  "PackageDescription"
                                                  recObj_akIs
                                                  (text-1.2.1.3:Data.Text.pack "author")))
                                            <*>
                                              (Data.Aeson.TH.lookupField
                                                 "Distribution.PackageDescription.PackageDescription"
                                                 "PackageDescription"
                                                 recObj_akIs
                                                 (text-1.2.1.3:Data.Text.pack "stability")))
                                           <*>
                                             (Data.Aeson.TH.lookupField
                                                "Distribution.PackageDescription.PackageDescription"
                                                "PackageDescription"
                                                recObj_akIs
                                                (text-1.2.1.3:Data.Text.pack "testedWith")))
                                          <*>
                                            (Data.Aeson.TH.lookupField
                                               "Distribution.PackageDescription.PackageDescription"
                                               "PackageDescription"
                                               recObj_akIs
                                               (text-1.2.1.3:Data.Text.pack "homepage")))
                                         <*>
                                           (Data.Aeson.TH.lookupField
                                              "Distribution.PackageDescription.PackageDescription"
                                              "PackageDescription"
                                              recObj_akIs
                                              (text-1.2.1.3:Data.Text.pack "pkgUrl")))
                                        <*>
                                          (Data.Aeson.TH.lookupField
                                             "Distribution.PackageDescription.PackageDescription"
                                             "PackageDescription"
                                             recObj_akIs
                                             (text-1.2.1.3:Data.Text.pack "bugReports")))
                                       <*>
                                         (Data.Aeson.TH.lookupField
                                            "Distribution.PackageDescription.PackageDescription"
                                            "PackageDescription"
                                            recObj_akIs
                                            (text-1.2.1.3:Data.Text.pack "sourceRepos")))
                                      <*>
                                        (Data.Aeson.TH.lookupField
                                           "Distribution.PackageDescription.PackageDescription"
                                           "PackageDescription"
                                           recObj_akIs
                                           (text-1.2.1.3:Data.Text.pack "synopsis")))
                                     <*>
                                       (Data.Aeson.TH.lookupField
                                          "Distribution.PackageDescription.PackageDescription"
                                          "PackageDescription"
                                          recObj_akIs
                                          (text-1.2.1.3:Data.Text.pack "description")))
                                    <*>
                                      (Data.Aeson.TH.lookupField
                                         "Distribution.PackageDescription.PackageDescription"
                                         "PackageDescription"
                                         recObj_akIs
                                         (text-1.2.1.3:Data.Text.pack "category")))
                                   <*>
                                     (Data.Aeson.TH.lookupField
                                        "Distribution.PackageDescription.PackageDescription"
                                        "PackageDescription"
                                        recObj_akIs
                                        (text-1.2.1.3:Data.Text.pack "customFieldsPD")))
                                  <*>
                                    (Data.Aeson.TH.lookupField
                                       "Distribution.PackageDescription.PackageDescription"
                                       "PackageDescription"
                                       recObj_akIs
                                       (text-1.2.1.3:Data.Text.pack "buildDepends")))
                                 <*>
                                   (Data.Aeson.TH.lookupField
                                      "Distribution.PackageDescription.PackageDescription"
                                      "PackageDescription"
                                      recObj_akIs
                                      (text-1.2.1.3:Data.Text.pack "specVersionRaw")))
                                <*>
                                  (Data.Aeson.TH.lookupField
                                     "Distribution.PackageDescription.PackageDescription"
                                     "PackageDescription"
                                     recObj_akIs
                                     (text-1.2.1.3:Data.Text.pack "buildType")))
                               <*>
                                 (Data.Aeson.TH.lookupField
                                    "Distribution.PackageDescription.PackageDescription"
                                    "PackageDescription"
                                    recObj_akIs
                                    (text-1.2.1.3:Data.Text.pack "library")))
                              <*>
                                (Data.Aeson.TH.lookupField
                                   "Distribution.PackageDescription.PackageDescription"
                                   "PackageDescription"
                                   recObj_akIs
                                   (text-1.2.1.3:Data.Text.pack "executables")))
                             <*>
                               (Data.Aeson.TH.lookupField
                                  "Distribution.PackageDescription.PackageDescription"
                                  "PackageDescription"
                                  recObj_akIs
                                  (text-1.2.1.3:Data.Text.pack "testSuites")))
                            <*>
                              (Data.Aeson.TH.lookupField
                                 "Distribution.PackageDescription.PackageDescription"
                                 "PackageDescription"
                                 recObj_akIs
                                 (text-1.2.1.3:Data.Text.pack "benchmarks")))
                           <*>
                             (Data.Aeson.TH.lookupField
                                "Distribution.PackageDescription.PackageDescription"
                                "PackageDescription"
                                recObj_akIs
                                (text-1.2.1.3:Data.Text.pack "dataFiles")))
                          <*>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.PackageDescription"
                               "PackageDescription"
                               recObj_akIs
                               (text-1.2.1.3:Data.Text.pack "dataDir")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.PackageDescription"
                              "PackageDescription"
                              recObj_akIs
                              (text-1.2.1.3:Data.Text.pack "extraSrcFiles")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.PackageDescription"
                             "PackageDescription"
                             recObj_akIs
                             (text-1.2.1.3:Data.Text.pack "extraTmpFiles")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.PackageDescription"
                            "PackageDescription"
                            recObj_akIs
                            (text-1.2.1.3:Data.Text.pack "extraDocFiles")))
                 other_akIt
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "PackageDescription"
                        "Distribution.PackageDescription.PackageDescription"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akIt) }
src/Distribution/PackageDescription/Aeson.hs:46:1-36: Splicing declarations
    deriveJSON defaultOptions ''FlagName
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON FlagName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akTU
            -> case value_akTU of {
                 FlagName arg1_akTV
                   -> aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akTV }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akTW
            -> case value_akTW of {
                 FlagName arg1_akTX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding arg1_akTX }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON FlagName where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akTY
            -> case value_akTY of {
                 arg_akTZ
                   -> (FlagName
                       <$> (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON arg_akTZ)) }
src/Distribution/PackageDescription/Aeson.hs:47:1-32: Splicing declarations
    deriveJSON defaultOptions ''Flag
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Flag where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akUG
            -> case value_akUG of {
                 MkFlag arg1_akUH arg2_akUI arg3_akUJ arg4_akUK
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "flagName")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_akUH),
                         ((text-1.2.1.3:Data.Text.pack "flagDescription")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_akUI),
                         ((text-1.2.1.3:Data.Text.pack "flagDefault")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_akUJ),
                         ((text-1.2.1.3:Data.Text.pack "flagManual")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_akUK)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akUL
            -> case value_akUL of {
                 MkFlag arg1_akUM arg2_akUN arg3_akUO arg4_akUP
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "flagName"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_akUM))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "flagDescription"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_akUN))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "flagDefault"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_akUO))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "flagManual"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_akUP)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Flag where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akUQ
            -> case value_akUQ of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_akUR
                   -> ((((MkFlag
                          <$>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.Flag"
                               "MkFlag"
                               recObj_akUR
                               (text-1.2.1.3:Data.Text.pack "flagName")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.Flag"
                              "MkFlag"
                              recObj_akUR
                              (text-1.2.1.3:Data.Text.pack "flagDescription")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.Flag"
                             "MkFlag"
                             recObj_akUR
                             (text-1.2.1.3:Data.Text.pack "flagDefault")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.Flag"
                            "MkFlag"
                            recObj_akUR
                            (text-1.2.1.3:Data.Text.pack "flagManual")))
                 other_akUS
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "MkFlag"
                        "Distribution.PackageDescription.Flag"
                        "Object"
                        (Data.Aeson.TH.valueConName other_akUS) }
src/Distribution/PackageDescription/Aeson.hs:48:1-37: Splicing declarations
    deriveJSON defaultOptions ''Condition
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON c_akX1 =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON (Condition c_akX1) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_akXm
            -> case value_akXm of {
                 Var arg1_akXn
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Var"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akXn))]
                 Lit arg1_akXo
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Lit"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akXo))]
                 CNot arg1_akXp
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "CNot"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akXp))]
                 COr arg1_akXq arg2_akXr
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "COr"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_akXs <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_akXs
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akXq);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_akXs
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_akXr);
                                        return mv_akXs }))))]
                 CAnd arg1_akXt arg2_akXu
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "CAnd"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_akXv <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_akXv
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_akXt);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_akXv
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_akXu);
                                        return mv_akXv }))))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_akXw
            -> case value_akXw of {
                 Var arg1_akXx
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Var"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_akXx))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Lit arg1_akXy
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Lit"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_akXy))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 CNot arg1_akXz
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "CNot"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_akXz))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 COr arg1_akXA arg2_akXB
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "COr"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_akXA)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_akXB)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 CAnd arg1_akXC arg2_akXD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "CAnd"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_akXC)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_akXD)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON c_akX1 =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON (Condition c_akX1) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_akXE
            -> case value_akXE of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_akXF
                   -> do { conKey_akXG <- (obj_akXF
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_akXG of {
                             _ | (conKey_akXG == (text-1.2.1.3:Data.Text.pack "Var"))
                               -> do { val_akXH <- (obj_akXF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akXH of {
                                         arg_akXI
                                           -> (Var
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_akXI)) } }
                               | (conKey_akXG == (text-1.2.1.3:Data.Text.pack "Lit"))
                               -> do { val_akXJ <- (obj_akXF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akXJ of {
                                         arg_akXK
                                           -> (Lit
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_akXK)) } }
                               | (conKey_akXG == (text-1.2.1.3:Data.Text.pack "CNot"))
                               -> do { val_akXL <- (obj_akXF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akXL of {
                                         arg_akXM
                                           -> (CNot
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_akXM)) } }
                               | (conKey_akXG == (text-1.2.1.3:Data.Text.pack "COr"))
                               -> do { val_akXN <- (obj_akXF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akXN of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akXO
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_akXO)
                                                  == 2) then
                                                  ((COr
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_akXO
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_akXO
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "COr"
                                                    "Distribution.PackageDescription.Condition"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_akXO))
                                         other_akXP
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "COr"
                                                "Distribution.PackageDescription.Condition"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akXP) } }
                               | (conKey_akXG == (text-1.2.1.3:Data.Text.pack "CAnd"))
                               -> do { val_akXQ <- (obj_akXF
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_akXQ of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_akXR
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_akXR)
                                                  == 2) then
                                                  ((CAnd
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_akXR
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_akXR
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "CAnd"
                                                    "Distribution.PackageDescription.Condition"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_akXR))
                                         other_akXS
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "CAnd"
                                                "Distribution.PackageDescription.Condition"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_akXS) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.Condition"
                                    ["Var", "Lit", "CNot", "COr", "CAnd"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_akXG) } }
                 other_akXT
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.Condition"
                        (Data.Aeson.TH.valueConName other_akXT) }
src/Distribution/PackageDescription/Aeson.hs:49:1-36: Splicing declarations
    deriveJSON defaultOptions ''CondTree
  ======>
    instance (aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON v_al7D,
              aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON c_al7E,
              aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON a_al7F) =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON (CondTree v_al7D c_al7E a_al7F) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_al7K
            -> case value_al7K of {
                 CondNode arg1_al7L arg2_al7M arg3_al7N
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "condTreeData")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_al7L),
                         ((text-1.2.1.3:Data.Text.pack "condTreeConstraints")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_al7M),
                         ((text-1.2.1.3:Data.Text.pack "condTreeComponents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_al7N)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_al7O
            -> case value_al7O of {
                 CondNode arg1_al7P arg2_al7Q arg3_al7R
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condTreeData"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_al7P))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condTreeConstraints"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_al7Q))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condTreeComponents"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_al7R)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance (aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON v_al7D,
              aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON c_al7E,
              aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON a_al7F) =>
             aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON (CondTree v_al7D c_al7E a_al7F) where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_al7S
            -> case value_al7S of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_al7T
                   -> (((CondNode
                         <$>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.CondTree"
                              "CondNode"
                              recObj_al7T
                              (text-1.2.1.3:Data.Text.pack "condTreeData")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.CondTree"
                             "CondNode"
                             recObj_al7T
                             (text-1.2.1.3:Data.Text.pack "condTreeConstraints")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.CondTree"
                            "CondNode"
                            recObj_al7T
                            (text-1.2.1.3:Data.Text.pack "condTreeComponents")))
                 other_al7U
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "CondNode"
                        "Distribution.PackageDescription.CondTree"
                        "Object"
                        (Data.Aeson.TH.valueConName other_al7U) }
src/Distribution/PackageDescription/Aeson.hs:50:1-32: Splicing declarations
    deriveJSON defaultOptions ''Arch
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON Arch where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_albp
            -> case value_albp of {
                 I386
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "I386"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 X86_64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "X86_64"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 PPC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "PPC"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 PPC64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "PPC64"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Sparc
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Sparc"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Arm
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Arm"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Mips
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Mips"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 SH
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "SH"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 IA64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "IA64"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 S390
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "S390"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Alpha
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Alpha"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Hppa
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Hppa"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Rs6000
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Rs6000"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 M68k
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "M68k"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Vax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Vax"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 JavaScript
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "JavaScript"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OtherArch arg1_albq
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OtherArch"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_albq))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_albr
            -> case value_albr of {
                 I386
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "I386"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 X86_64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "X86_64"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 PPC
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "PPC"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 PPC64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "PPC64"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Sparc
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Sparc"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Arm
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Arm"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Mips
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Mips"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 SH
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "SH"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 IA64
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "IA64"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 S390
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "S390"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Alpha
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Alpha"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Hppa
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Hppa"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Rs6000
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Rs6000"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 M68k
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "M68k"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Vax
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Vax"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 JavaScript
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "JavaScript"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OtherArch arg1_albs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OtherArch"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_albs))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON Arch where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_albt
            -> case value_albt of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_albu
                   -> do { conKey_albv <- (obj_albu
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_albv of {
                             _ | (conKey_albv == (text-1.2.1.3:Data.Text.pack "I386"))
                               -> do { val_albw <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albw of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albx
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albx
                                           -> pure I386
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "I386"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albx))
                                         other_alby
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "I386"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alby) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "X86_64"))
                               -> do { val_albz <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albz of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albA
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albA
                                           -> pure X86_64
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "X86_64"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albA))
                                         other_albB
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "X86_64"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albB) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "PPC"))
                               -> do { val_albC <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albC of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albD
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albD
                                           -> pure PPC
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PPC"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albD))
                                         other_albE
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PPC"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albE) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "PPC64"))
                               -> do { val_albF <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albF of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albG
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albG
                                           -> pure PPC64
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PPC64"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albG))
                                         other_albH
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "PPC64"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albH) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Sparc"))
                               -> do { val_albI <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albI of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albJ
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albJ
                                           -> pure Sparc
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Sparc"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albJ))
                                         other_albK
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Sparc"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albK) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Arm"))
                               -> do { val_albL <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albL of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albM
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albM
                                           -> pure Arm
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Arm"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albM))
                                         other_albN
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Arm"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albN) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Mips"))
                               -> do { val_albO <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albO of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albP
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albP
                                           -> pure Mips
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Mips"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albP))
                                         other_albQ
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Mips"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albQ) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "SH"))
                               -> do { val_albR <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albR of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albS
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albS
                                           -> pure SH
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "SH"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albS))
                                         other_albT
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "SH"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albT) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "IA64"))
                               -> do { val_albU <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albU of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albV
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albV
                                           -> pure IA64
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IA64"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albV))
                                         other_albW
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IA64"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albW) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "S390"))
                               -> do { val_albX <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_albX of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_albY
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_albY
                                           -> pure S390
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "S390"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_albY))
                                         other_albZ
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "S390"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_albZ) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Alpha"))
                               -> do { val_alc0 <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alc0 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alc1
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alc1
                                           -> pure Alpha
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Alpha"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alc1))
                                         other_alc2
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Alpha"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alc2) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Hppa"))
                               -> do { val_alc3 <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alc3 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alc4
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alc4
                                           -> pure Hppa
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Hppa"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alc4))
                                         other_alc5
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Hppa"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alc5) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Rs6000"))
                               -> do { val_alc6 <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alc6 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alc7
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alc7
                                           -> pure Rs6000
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Rs6000"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alc7))
                                         other_alc8
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Rs6000"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alc8) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "M68k"))
                               -> do { val_alc9 <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alc9 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alca
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alca
                                           -> pure M68k
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "M68k"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alca))
                                         other_alcb
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "M68k"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alcb) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "Vax"))
                               -> do { val_alcc <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alcc of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alcd
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alcd
                                           -> pure Vax
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Vax"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alcd))
                                         other_alce
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Vax"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alce) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "JavaScript"))
                               -> do { val_alcf <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alcf of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alcg
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alcg
                                           -> pure JavaScript
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "JavaScript"
                                                "Distribution.System.Arch"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alcg))
                                         other_alch
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "JavaScript"
                                                "Distribution.System.Arch"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alch) } }
                               | (conKey_albv == (text-1.2.1.3:Data.Text.pack "OtherArch"))
                               -> do { val_alci <- (obj_albu
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alci of {
                                         arg_alcj
                                           -> (OtherArch
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_alcj)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.System.Arch"
                                    ["I386", "X86_64", "PPC", "PPC64", "Sparc", "Arm", "Mips", "SH",
                                     "IA64", "S390", "Alpha", "Hppa", "Rs6000", "M68k", "Vax",
                                     "JavaScript", "OtherArch"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_albv) } }
                 other_alck
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.System.Arch"
                        (Data.Aeson.TH.valueConName other_alck) }
src/Distribution/PackageDescription/Aeson.hs:51:1-30: Splicing declarations
    deriveJSON defaultOptions ''OS
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON OS where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_alzW
            -> case value_alzW of {
                 Linux
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Linux"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Windows
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Windows"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OSX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OSX"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 FreeBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "FreeBSD"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OpenBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OpenBSD"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 NetBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "NetBSD"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 DragonFly
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "DragonFly"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Solaris
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Solaris"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 AIX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "AIX"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 HPUX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "HPUX"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 IRIX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "IRIX"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 HaLVM
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "HaLVM"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 IOS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "IOS"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 Ghcjs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Ghcjs"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON ([] :: [()])))]
                 OtherOS arg1_alzX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OtherOS"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_alzX))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_alzY
            -> case value_alzY of {
                 Linux
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Linux"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Windows
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Windows"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OSX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OSX"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 FreeBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "FreeBSD"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OpenBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OpenBSD"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 NetBSD
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "NetBSD"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 DragonFly
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "DragonFly"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Solaris
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Solaris"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 AIX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "AIX"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 HPUX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "HPUX"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 IRIX
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "IRIX"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 HaLVM
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "HaLVM"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 IOS
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "IOS"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Ghcjs
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Ghcjs"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              ([] :: [()])))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 OtherOS arg1_alzZ
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OtherOS"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_alzZ))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON OS where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_alA0
            -> case value_alA0 of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_alA1
                   -> do { conKey_alA2 <- (obj_alA1
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_alA2 of {
                             _ | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "Linux"))
                               -> do { val_alA3 <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alA3 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alA4
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alA4
                                           -> pure Linux
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Linux"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alA4))
                                         other_alA5
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Linux"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alA5) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "Windows"))
                               -> do { val_alA6 <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alA6 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alA7
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alA7
                                           -> pure Windows
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Windows"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alA7))
                                         other_alA8
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Windows"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alA8) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "OSX"))
                               -> do { val_alA9 <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alA9 of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAa
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAa
                                           -> pure OSX
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OSX"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAa))
                                         other_alAb
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OSX"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAb) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "FreeBSD"))
                               -> do { val_alAc <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAc of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAd
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAd
                                           -> pure FreeBSD
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "FreeBSD"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAd))
                                         other_alAe
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "FreeBSD"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAe) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "OpenBSD"))
                               -> do { val_alAf <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAf of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAg
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAg
                                           -> pure OpenBSD
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OpenBSD"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAg))
                                         other_alAh
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "OpenBSD"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAh) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "NetBSD"))
                               -> do { val_alAi <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAi of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAj
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAj
                                           -> pure NetBSD
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "NetBSD"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAj))
                                         other_alAk
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "NetBSD"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAk) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "DragonFly"))
                               -> do { val_alAl <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAl of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAm
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAm
                                           -> pure DragonFly
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "DragonFly"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAm))
                                         other_alAn
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "DragonFly"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAn) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "Solaris"))
                               -> do { val_alAo <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAo of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAp
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAp
                                           -> pure Solaris
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Solaris"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAp))
                                         other_alAq
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Solaris"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAq) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "AIX"))
                               -> do { val_alAr <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAr of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAs
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAs
                                           -> pure AIX
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AIX"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAs))
                                         other_alAt
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "AIX"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAt) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "HPUX"))
                               -> do { val_alAu <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAu of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAv
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAv
                                           -> pure HPUX
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HPUX"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAv))
                                         other_alAw
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HPUX"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAw) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "IRIX"))
                               -> do { val_alAx <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAx of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAy
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAy
                                           -> pure IRIX
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IRIX"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAy))
                                         other_alAz
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IRIX"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAz) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "HaLVM"))
                               -> do { val_alAA <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAA of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAB
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAB
                                           -> pure HaLVM
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HaLVM"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAB))
                                         other_alAC
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "HaLVM"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAC) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "IOS"))
                               -> do { val_alAD <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAD of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAE
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAE
                                           -> pure IOS
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IOS"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAE))
                                         other_alAF
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "IOS"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAF) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "Ghcjs"))
                               -> do { val_alAG <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAG of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alAH
                                           | vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.null
                                               arr_alAH
                                           -> pure Ghcjs
                                           | otherwise
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Ghcjs"
                                                "Distribution.System.OS"
                                                "an empty Array"
                                                ("Array of length "
                                                 ++
                                                   ((show
                                                     . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                      arr_alAH))
                                         other_alAI
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Ghcjs"
                                                "Distribution.System.OS"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alAI) } }
                               | (conKey_alA2 == (text-1.2.1.3:Data.Text.pack "OtherOS"))
                               -> do { val_alAJ <- (obj_alA1
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alAJ of {
                                         arg_alAK
                                           -> (OtherOS
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_alAK)) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.System.OS"
                                    ["Linux", "Windows", "OSX", "FreeBSD", "OpenBSD", "NetBSD",
                                     "DragonFly", "Solaris", "AIX", "HPUX", "IRIX", "HaLVM", "IOS",
                                     "Ghcjs", "OtherOS"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_alA2) } }
                 other_alAL
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.System.OS" (Data.Aeson.TH.valueConName other_alAL) }
src/Distribution/PackageDescription/Aeson.hs:52:1-35: Splicing declarations
    deriveJSON defaultOptions ''ConfVar
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON ConfVar where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_alV3
            -> case value_alV3 of {
                 OS arg1_alV4
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "OS"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_alV4))]
                 Arch arg1_alV5
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Arch"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_alV5))]
                 Flag arg1_alV6
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Flag"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_alV6))]
                 Impl arg1_alV7 arg2_alV8
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "tag")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.String
                               (text-1.2.1.3:Data.Text.pack "Impl"))),
                         ((text-1.2.1.3:Data.Text.pack "contents")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..=
                            (aeson-0.10.0.0:Data.Aeson.Types.Internal.Array
                               (vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.create
                                  (do { mv_alV9 <- vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeNew
                                                     2;
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_alV9
                                          0
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg1_alV7);
                                        vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.Mutable.unsafeWrite
                                          mv_alV9
                                          1
                                          (aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON arg2_alV8);
                                        return mv_alV9 }))))] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_alVa
            -> case value_alVa of {
                 OS arg1_alVb
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "OS"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_alVb))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Arch arg1_alVc
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Arch"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_alVc))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Flag arg1_alVd
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Flag"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
                                              arg1_alVd))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}')))
                 Impl arg1_alVe arg2_alVf
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                 (text-1.2.1.3:Data.Text.pack "tag"))
                              Data.Monoid.<>
                                ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                 Data.Monoid.<>
                                   (aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "Impl"))))
                             Data.Monoid.<>
                               ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                Data.Monoid.<>
                                  ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                      (text-1.2.1.3:Data.Text.pack "contents"))
                                   Data.Monoid.<>
                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                      Data.Monoid.<>
                                        (aeson-0.10.0.0:Data.Aeson.Types.Internal.fromEncoding
                                           (aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                                              ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                  '[')
                                               Data.Monoid.<>
                                                 (((aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                      arg1_alVe)
                                                   Data.Monoid.<>
                                                     ((bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                         ',')
                                                      Data.Monoid.<>
                                                        (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                                           arg2_alVf)))
                                                  Data.Monoid.<>
                                                    (bytestring-0.10.6.0:Data.ByteString.Builder.char7
                                                       ']')))))))))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON ConfVar where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_alVg
            -> case value_alVg of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object obj_alVh
                   -> do { conKey_alVi <- (obj_alVh
                                           aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                             (text-1.2.1.3:Data.Text.pack "tag"));
                           case conKey_alVi of {
                             _ | (conKey_alVi == (text-1.2.1.3:Data.Text.pack "OS"))
                               -> do { val_alVj <- (obj_alVh
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alVj of {
                                         arg_alVk
                                           -> (OS
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_alVk)) } }
                               | (conKey_alVi == (text-1.2.1.3:Data.Text.pack "Arch"))
                               -> do { val_alVl <- (obj_alVh
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alVl of {
                                         arg_alVm
                                           -> (Arch
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_alVm)) } }
                               | (conKey_alVi == (text-1.2.1.3:Data.Text.pack "Flag"))
                               -> do { val_alVn <- (obj_alVh
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alVn of {
                                         arg_alVo
                                           -> (Flag
                                               <$>
                                                 (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                    arg_alVo)) } }
                               | (conKey_alVi == (text-1.2.1.3:Data.Text.pack "Impl"))
                               -> do { val_alVp <- (obj_alVh
                                                    aeson-0.10.0.0:Data.Aeson.Types.Instances..:
                                                      (text-1.2.1.3:Data.Text.pack "contents"));
                                       case val_alVp of {
                                         aeson-0.10.0.0:Data.Aeson.Types.Internal.Array arr_alVq
                                           -> if ((vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length
                                                     arr_alVq)
                                                  == 2) then
                                                  ((Impl
                                                    <$>
                                                      (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                         (arr_alVq
                                                          `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                            0)))
                                                   <*>
                                                     (aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
                                                        (arr_alVq
                                                         `vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.unsafeIndex`
                                                           1)))
                                              else
                                                  Data.Aeson.TH.parseTypeMismatch'
                                                    "Impl"
                                                    "Distribution.PackageDescription.ConfVar"
                                                    "Array of length 2"
                                                    ("Array of length "
                                                     ++
                                                       ((show
                                                         . vector-0.11.0.0@vecto_A9qWf1eecPQGJD12EBZIxF:Data.Vector.length)
                                                          arr_alVq))
                                         other_alVr
                                           -> Data.Aeson.TH.parseTypeMismatch'
                                                "Impl"
                                                "Distribution.PackageDescription.ConfVar"
                                                "Array"
                                                (Data.Aeson.TH.valueConName other_alVr) } }
                               | otherwise
                               -> Data.Aeson.TH.conNotFoundFailTaggedObject
                                    "Distribution.PackageDescription.ConfVar"
                                    ["OS", "Arch", "Flag", "Impl"]
                                    (text-1.2.1.3:Data.Text.Show.unpack conKey_alVi) } }
                 other_alVs
                   -> Data.Aeson.TH.noObjectFail
                        "Distribution.PackageDescription.ConfVar"
                        (Data.Aeson.TH.valueConName other_alVs) }
src/Distribution/PackageDescription/Aeson.hs:53:1-53: Splicing declarations
    deriveJSON defaultOptions ''GenericPackageDescription
  ======>
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.ToJSON GenericPackageDescription where
      aeson-0.10.0.0:Data.Aeson.Types.Class.toJSON
        = \ value_am29
            -> case value_am29 of {
                 GenericPackageDescription arg1_am2a
                                           arg2_am2b
                                           arg3_am2c
                                           arg4_am2d
                                           arg5_am2e
                                           arg6_am2f
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.object
                        [((text-1.2.1.3:Data.Text.pack "packageDescription")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg1_am2a),
                         ((text-1.2.1.3:Data.Text.pack "genPackageFlags")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg2_am2b),
                         ((text-1.2.1.3:Data.Text.pack "condLibrary")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg3_am2c),
                         ((text-1.2.1.3:Data.Text.pack "condExecutables")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg4_am2d),
                         ((text-1.2.1.3:Data.Text.pack "condTestSuites")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg5_am2e),
                         ((text-1.2.1.3:Data.Text.pack "condBenchmarks")
                          aeson-0.10.0.0:Data.Aeson.Types.Class..= arg6_am2f)] }
      aeson-0.10.0.0:Data.Aeson.Types.Class.toEncoding
        = \ value_am2g
            -> case value_am2g of {
                 GenericPackageDescription arg1_am2h
                                           arg2_am2i
                                           arg3_am2j
                                           arg4_am2k
                                           arg5_am2l
                                           arg6_am2m
                   -> aeson-0.10.0.0:Data.Aeson.Types.Internal.Encoding
                        ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 '{')
                         Data.Monoid.<>
                           ((mconcat
                               (base-4.8.1.0:Data.OldList.intersperse
                                  (bytestring-0.10.6.0:Data.ByteString.Builder.char7 ',')
                                  [((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "packageDescription"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg1_am2h))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "genPackageFlags"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg2_am2i))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condLibrary"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg3_am2j))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condExecutables"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg4_am2k))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condTestSuites"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg5_am2l))),
                                   ((aeson-0.10.0.0:Data.Aeson.Encode.Builder.text
                                       (text-1.2.1.3:Data.Text.pack "condBenchmarks"))
                                    Data.Monoid.<>
                                      ((bytestring-0.10.6.0:Data.ByteString.Builder.char7 ':')
                                       Data.Monoid.<>
                                         (aeson-0.10.0.0:Data.Aeson.Encode.Functions.builder
                                            arg6_am2m)))]))
                            Data.Monoid.<>
                              (bytestring-0.10.6.0:Data.ByteString.Builder.char7 '}'))) }
    instance aeson-0.10.0.0:Data.Aeson.Types.Class.FromJSON GenericPackageDescription where
      aeson-0.10.0.0:Data.Aeson.Types.Class.parseJSON
        = \ value_am2n
            -> case value_am2n of {
                 aeson-0.10.0.0:Data.Aeson.Types.Internal.Object recObj_am2o
                   -> ((((((GenericPackageDescription
                            <$>
                              (Data.Aeson.TH.lookupField
                                 "Distribution.PackageDescription.GenericPackageDescription"
                                 "GenericPackageDescription"
                                 recObj_am2o
                                 (text-1.2.1.3:Data.Text.pack "packageDescription")))
                           <*>
                             (Data.Aeson.TH.lookupField
                                "Distribution.PackageDescription.GenericPackageDescription"
                                "GenericPackageDescription"
                                recObj_am2o
                                (text-1.2.1.3:Data.Text.pack "genPackageFlags")))
                          <*>
                            (Data.Aeson.TH.lookupField
                               "Distribution.PackageDescription.GenericPackageDescription"
                               "GenericPackageDescription"
                               recObj_am2o
                               (text-1.2.1.3:Data.Text.pack "condLibrary")))
                         <*>
                           (Data.Aeson.TH.lookupField
                              "Distribution.PackageDescription.GenericPackageDescription"
                              "GenericPackageDescription"
                              recObj_am2o
                              (text-1.2.1.3:Data.Text.pack "condExecutables")))
                        <*>
                          (Data.Aeson.TH.lookupField
                             "Distribution.PackageDescription.GenericPackageDescription"
                             "GenericPackageDescription"
                             recObj_am2o
                             (text-1.2.1.3:Data.Text.pack "condTestSuites")))
                       <*>
                         (Data.Aeson.TH.lookupField
                            "Distribution.PackageDescription.GenericPackageDescription"
                            "GenericPackageDescription"
                            recObj_am2o
                            (text-1.2.1.3:Data.Text.pack "condBenchmarks")))
                 other_am2p
                   -> Data.Aeson.TH.parseTypeMismatch'
                        "GenericPackageDescription"
                        "Distribution.PackageDescription.GenericPackageDescription"
                        "Object"
                        (Data.Aeson.TH.valueConName other_am2p) }
In-place registering package-description-aeson-0.1.0.0...
Preprocessing test suite 'hspec' for package-description-aeson-0.1.0.0...
