
if (perched) {
	perched = false;
	spr_flying = true;
	if (target_tree == tree1) {
		target_tree = tree2;
	} else {
		target_tree = tree1
	}
}
if (perched) {
	target_tree = choose_random_tree();
	spr_flying = true;
	perched = false;
// place animated flying sprite here
}
draw_self();