height = 6;
base_height = 3;

module block() {
	translate([0, 0, base_height]) 
	linear_extrude(height = height - base_height)
	square(size = [ 90, 28 ], center = true);
}

module base() {
	linear_extrude(height = base_height)
	square(size = [ 72, 28 ], center = true);
}


module edge_cuts() {
linear_extrude(height = height)
	import(file = "mixer-Edge_Cuts.svg", center = true, dpi = 96);
}

difference() {
	union() {
		block();
		base();
	}
	edge_cuts();
}