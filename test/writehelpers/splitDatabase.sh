#!/bin/sh
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtended.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_Extended_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedGFlash.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedGFlash_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileIdeal.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_Ideal_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedLiMin.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedLiMin_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedLiMax.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedLiMax_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedX0Min.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedX0Min_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedX0Max.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedX0Max_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedPhaseIBeamPipe.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedPhaseIBeamPipe_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedPostLS1.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedPostLS1_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedPostLS2.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedPostLS2_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedFlat10Percent.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedFlat10Percent_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedFlat20Percent.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedFlat20Percent_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedFlat10Services30Percent.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedFlat10Services30Percent_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedFlat20Services30Percent.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedFlat20Services30Percent_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:GeometryFileExtendedServices30Percent.db -D CondFormatsGeometryObjects  -t XMLFILE_Geometry_TagXX_ExtendedServices30Percent_mc -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:TKRECO_Geometry.db -D CondFormatsGeometryObjects  -t TKRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:TKExtra_Geometry.db -D CondFormatsGeometryObjects  -t TKExtra_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:EBRECO_Geometry.db -D CondFormatsGeometryObjects  -t EBRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:EERECO_Geometry.db -D CondFormatsGeometryObjects  -t EERECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:EPRECO_Geometry.db -D CondFormatsGeometryObjects  -t EPRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:HCALRECO_Geometry.db -D CondFormatsGeometryObjects  -t HCALRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:CTRECO_Geometry.db -D CondFormatsGeometryObjects  -t CTRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:ZDCRECO_Geometry.db -D CondFormatsGeometryObjects  -t ZDCRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:CASTORRECO_Geometry.db -D CondFormatsGeometryObjects  -t CASTORRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:CSCRECO_Geometry.db -D CondFormatsGeometryObjects  -t CSCRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:CSCRECODIGI_Geometry.db -D CondFormatsGeometryObjects  -t CSCRECODIGI_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:DTRECO_Geometry.db -D CondFormatsGeometryObjects  -t DTRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
cmscond_export_iov -s sqlite_file:myfile.db -d sqlite_file:RPCRECO_Geometry.db -D CondFormatsGeometryObjects  -t RPCRECO_Geometry_TagXX -l sqlite_file:localpopconlog.db
