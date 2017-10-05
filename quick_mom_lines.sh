#/bin/bash/

fits op=xyin in=G340-350-12CO_V-149_V49_G340.00_G350.00_b-0.51_b0.51.st.mom0.fits out=12CO.mirImg
fits op=xyin in=G340-350-13CO_V-149_V49_G340.00_G350.00_b-0.51_b0.51.st.mom0.fits out=13CO.mirImg
fits op=xyin in=G340-350-C18O_V-149_V49_G340.00_G350.00_b-0.51_b0.51.st.mom0.fits out=C18O.mirImg

regrid tin=12CO.mirImg in=13CO.mirImg out=13CO.regrid
regrid tin=12CO.mirImg in=C18O.mirImg out=C18O.regrid

cp G340-350-12CO_V-149_V49_G340.00_G350.00_b-0.51_b0.51.st.mom0.fits G340-350-12CO.fits
fits op=xyout in=13CO.regrid out=G340-350-13CO.fits
fits op=xyout in=C18O.regrid out=G340-350-C18O.fits

rm -r *.mirImg *.regrid
