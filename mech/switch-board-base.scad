width = 75;
base_width = 65;
depth = 18;

height = 6;
base_height = 3;



module block() {
	translate([0, 0, base_height]) 
	linear_extrude(height = height - base_height)
	square(size = [ width, depth ], center = true);
}

module base() {
	linear_extrude(height = base_height)
	square(size = [ base_width, depth ], center = true);
}


module edge_cuts() {
linear_extrude(height = height)
	import(file = "switch-board-Edge_Cuts.svg", center = true, dpi = 96);
}

difference() {
	union() {
		block();
		base();
	}
	edge_cuts();
}