{
	if(($4 == 0) && ( ($3 == 2) || ($3 == 3) ) && ($1 == "x") && ($2 == "bone")) {
		print "In this light you can see some writing on the bone.  It says:"
		print "For an explosive time, go to Fourth St. and Vermont."
	}
	else if(NF < 4) {
		print "You must supply an object."
	}
	else if($3 == 6) {
		print "I don't know what that is."
	}
	else if($3 == 2) {
		if($1 == "press") {
			print "You cannot press that."
		}
		else if($1 == "take") {
			print "I do not see that here."
		}
	}
	else if($3 == 5) {
		if($1 == "drop") {
			print "You don't have that."
		}
		else if($1 != "drop") {
			print "I do not see that here."
		}
	}
	else if($3 == 4) {
		if($1 == "take") {
			print "You cannot take that."
		}
		else if($1 == "drop") {
			print "You don't have that."
		}
		else if ($1 == "press") {
			if($2 != "switch") {
				print "You cannot press that."
			}
		}
	}
	else if($3 == 3) {
		if($1 == "drop") {
			print "You don't have that."
		}
		else if ($1 == "press") {
			if($2 != "switch") {
				print "You cannot press that."
			}
		}
	}
}
