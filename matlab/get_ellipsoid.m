function ell = get_ellipsoid(name)

switch name
case {'wgs84',''}
 % WGS-84 ellipsoid parameters.
 %   <http://earth-info.nga.mil/GandG/tr8350_2.html>
 %   <ftp://164.214.2.65/pub/gig/tr8350.2/wgs84fin.pdf>
 ell.a = 6378137.0;                                % semi-major axis
 ell.f = 1.0 / 298.2572235630;                     % flattening
 ell.b = ell.a * (1 - ell.f);                      % semi-minor axis
 ell.e = sqrt ( (ell.a^2 - ell.b^2) / (ell.a^2));  % first eccentricity
otherwise, error([name,' not yet implemented'])
end
end
