#!/bin/tcsh
cmsenv
if ($#argv == 0) then                                                                                                                                                                                    
   setenv mytag "TagXX"
else                                                                                                                                                                                                     
   setenv mytag `echo ${1}`                                                                                                                                                                          
endif
#source blob_preparation.txt
sed -i '{s/TagXX/${mytag}/g}' *.py
sed -i '{s/TagXX/${mytag}/g}' *.txt
sed -i '{s/TagXX/${mytag}/g}' *.sh
cmsRun geometryxmlwriter.py
cmsRun geometrywriter.py
sed -i '{s/Extended/ExtendedGFlash/g}' geometryxmlwriter.py
sed -i '{s/\/ge/\/geg/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterExtendedGFlash.py
cmsRun geometryxmlwriter.py
sed -i '{s/Extended/Ideal/g}' geometryxmlwriter.py
sed -i '{s/\/geg/\/gig/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterIdeal.py
cmsRun geometryxmlwriter.py
sed -i '{s/IdealGFlash/Ideal/g}' geometryxmlwritergen.py
sed -i '{s/\/gig/\/gi/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterIdealGFlash.py
cmsRun geometryxmlwriter.py
sed -i '{s/Ideal/ExtendedX0Min/g}' geometryxmlwriter.py
sed -i '{s/\/gi/\/gexmin/g}' geometryxmlwriter.py
cmsRun geometryxmlwriter.py
#cmsRun geometryxmlwriterExtendedX0Min.py
sed -i '{s/X0Min/X0Max/g}' geometryxmlwriter.py
sed -i '{s/\/gexmin/\/gexmax/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterExtendedX0Max.py
cmsRun geometryxmlwriter.py
sed -i '{s/X0Max/LiMin/g}' geometryxmlwriter.py
sed -i '{s/\/gexmax/\/gelimin/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterExtendedLiMin.py
cmsRun geometryxmlwriter.py
sed -i '{s/LiMin/LiMax/g}' geometryxmlwriter.py
sed -i '{s/\/gelimin/\/gelimax/g}' geometryxmlwriter.py
#cmsRun geometryxmlwriterExtendedLiMax.py
cmsRun geometryxmlwriter.py
#NOTE: the first one (ge.xml) is not written here ... it is written by geometrywriter.py above.
sed -i '{s/Extended/ExtendedGFlash/g}' xmlgeometrywriter.py
sed -i '{s/\/ge/\/geg/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
#cat xmlgeometrywriter.py
sed -i '{s/Extended/Ideal/g}' xmlgeometrywriter.py
sed -i '{s/\/geg/\/gig/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
#cat xmlgeometrywriter.py
sed -i '{s/IdealGFlash/Ideal/g}' xmlgeometrywriter.py
sed -i '{s/\/gig/\/gi/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
sed -i '{s/Ideal/ExtendedX0Min/g}' xmlgeometrywriter.py
sed -i '{s/\/gi/\/gexmin/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
sed -i '{s/X0Min/X0Max/g}' xmlgeometrywriter.py
sed -i '{s/\/gexmin/\/gexmax/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
sed -i '{s/X0Max/LiMin/g}' xmlgeometrywriter.py
sed -i '{s/\/gexmax/\/gelimin/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
sed -i '{s/LiMin/LiMax/g}' xmlgeometrywriter.py
sed -i '{s/\/gelimin/\/gelimax/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
#cat xmlgeometrywriter.py
source cmscondExport.sh
#source renameALL.sh

