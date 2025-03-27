
if (perched) {
	perched = false;
	spr_flying = true;
	if (target_tree == Btree2) {
		target_tree = Btree1;
	} else {
		target_tree = target_tree2
	}
}
if (perched) {
	target_tree = choose_random_tree();
	spr_flying = true;
	perched = false;
// place animated flying sprite here
}
draw_self();