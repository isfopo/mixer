linear_extrude(height = 3) difference()
{
	square(size = [ 90, 40 ], center = true);
	import(file = "mixer-Edge_Cuts.svg", center = true, dpi = 96);
	import(file = "mixer-F_Mask.svg", center = true, dpi = 96);
}
