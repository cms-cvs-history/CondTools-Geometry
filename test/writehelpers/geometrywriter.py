import FWCore.ParameterSet.Config as cms

process = cms.Process("GeometryWriter")
process.load("CondCore.DBCommon.CondDBCommon_cfi")

# This will read all the little XML files and from
# that fill the DDCompactView. The modules that fill
# the reco part of the database need the DDCompactView.
process.load('Configuration.Geometry.GeometryExtended_cff')
process.load('Geometry.MuonNumbering.muonNumberingInitialization_cfi')
process.load('Geometry.CaloEventSetup.CaloGeometryDBWriter_cfi')

process.source = cms.Source("EmptyIOVSource",
                            lastValue = cms.uint64(1),
                            timetype = cms.string('runnumber'),
                            firstValue = cms.uint64(1),
                            interval = cms.uint64(1)
                            )

# This reads the big XML file and the only way to fill the
# nonreco part of the database is to read this file.  It
# somewhat duplicates the information read from the little
# XML files, but there is no way to directly build the
# DDCompactView from this.
process.XMLGeometryWriter = cms.EDAnalyzer("XMLGeometryBuilder",
                                           XMLFileName = cms.untracked.string("./geSingleBigFile.xml"),
                                           ZIP = cms.untracked.bool(True)
                                           )
process.TrackerGeometricDetExtraESModule = cms.ESProducer( "TrackerGeometricDetExtraESModule",
                                                           fromDDD = cms.bool( True )
                                                           )

process.TrackerGeometryWriter = cms.EDAnalyzer("PGeometricDetBuilder")
process.TrackerGeometryExtraWriter = cms.EDAnalyzer("PGeometricDetExtraBuilder")

process.CaloGeometryWriter = cms.EDAnalyzer("PCaloGeometryBuilder")

process.CSCGeometryWriter = cms.EDAnalyzer("CSCRecoIdealDBLoader")

process.DTGeometryWriter = cms.EDAnalyzer("DTRecoIdealDBLoader")

process.RPCGeometryWriter = cms.EDAnalyzer("RPCRecoIdealDBLoader")

process.GEMGeometryWriter = cms.EDAnalyzer("GEMRecoIdealDBLoader")

process.CondDBCommon.BlobStreamerName = cms.untracked.string('TBufferBlobStreamingService')
process.CondDBCommon.timetype = cms.untracked.string('runnumber')
process.CondDBCommon.connect = cms.string('sqlite_file:myfile.db')
process.PoolDBOutputService = cms.Service("PoolDBOutputService",
                                          process.CondDBCommon,
                                          toPut = cms.VPSet(cms.PSet(record = cms.string('GeometryFileRcd'),tag = cms.string('XMLFILE_Geometry_TagXX_Extended_mc')),
                                                            cms.PSet(record = cms.string('IdealGeometryRecord'),tag = cms.string('TKRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PGeometricDetExtraRcd'),tag = cms.string('TKExtra_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PEcalBarrelRcd'),   tag = cms.string('EBRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PEcalEndcapRcd'),   tag = cms.string('EERECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PEcalPreshowerRcd'),tag = cms.string('EPRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PHcalRcd'),         tag = cms.string('HCALRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PCaloTowerRcd'),    tag = cms.string('CTRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PZdcRcd'),          tag = cms.string('ZDCRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('PCastorRcd'),       tag = cms.string('CASTORRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('CSCRecoGeometryRcd'),tag = cms.string('CSCRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('CSCRecoDigiParametersRcd'),tag = cms.string('CSCRECODIGI_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('DTRecoGeometryRcd'),tag = cms.string('DTRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('RPCRecoGeometryRcd'),tag = cms.string('RPCRECO_Geometry_TagXX')),
                                                            cms.PSet(record = cms.string('GEMRecoGeometryRcd'),tag = cms.string('GEMRECO_Geometry_TagXX'))
                                                            )
                                          )

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(1)
    )

process.p1 = cms.Path(process.XMLGeometryWriter+process.TrackerGeometryWriter+process.TrackerGeometryExtraWriter+process.CaloGeometryWriter+process.CSCGeometryWriter+process.DTGeometryWriter+process.RPCGeometryWriter+process.GEMGeometryWriter)
