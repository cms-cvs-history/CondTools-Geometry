source blob_preparation.txt
sed -i '{s/TagXX/Tag340V4/g}' *
cmsRun geometryxmlwriterExtended.py
cmsRun geometrywriter.py
cmsRun geometryxmlwriterExtendedGFlash.py
cmsRun geometryxmlwriterIdeal.py
cmsRun geometryxmlwriterIdealGFlash.py
sed -i '{s/Extended/ExtendedGFlash/g}' xmlgeometrywriter.py
sed -i '{s/ge.xml/geg.xml/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
cat xmlgeometrywriter.py
sed -i '{s/Extended/Ideal/g}' xmlgeometrywriter.py
sed -i '{s/geg.xml/gig.xml/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
cat xmlgeometrywriter.py
sed -i '{s/IdealGFlash/Ideal/g}' xmlgeometrywriter.py
sed -i '{s/gig.xml/gi.xml/g}' xmlgeometrywriter.py
cmsRun xmlgeometrywriter.py
cat xmlgeometrywriter.py
source cmscondExport.sh
source renameALL.sh

