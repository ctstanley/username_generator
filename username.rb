# challenge 1 function that accepts first name and returns first letter lowercase
def generate_username1 (fir)
	fir[0].downcase
end

# challenge 2 accepts user's first and last name and returns first char
# lowercase and w/out spaces
def generate_username2 (fir, las)
	fir.gsub(/[\W\d]/, "").downcase[0] + las.gsub(/[\W\d]/, "").downcase unless
	fir === "" || las === ""
end

# Challenege 3 first letter of first name, last name, only last two digits of valid year
def generate_username3 (fir, las, year)
	ye = year.to_s
	fir[0] + las + ye[-2..-1] unless ye.length != 4
end

# Challenge 4 privilege level check
$priv = ["user", "seller", "manager", "admin"]
def check_privilege (lvl=0)
	$priv[lvl]
end
# Strech generate_username4
def generate_username4 (fir, las, year, lvl=0)
	ye = year.to_s
	lvl > 0 && ye.length === 4 ? $priv[lvl] + "-" + fir[0] + las + ye[-2..-1] : fir[0] + las + ye[-2..-1]
end

# Challenge 5 username uniqueness
$stash = Hash.new
def generate_username5 (fir, las, year)
	ye = year.to_s
	user = fir[0] + las + ye[-2..-1] unless ye.length != 4
	user.each_line {|a| $stash[a] = ($stash[a] || 0) + 1}
	if $stash[user] > 1
		uquser = user + "_#{$stash[user] - 1}"
	else
		user
	end	
end

ARGV generate_username5

# NOTE #
# make radiolab list app that serves and checks off episodes



