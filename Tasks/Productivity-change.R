# find how much lower Shaanxi Province total revenue would
# have been if deposition was 1mg/m^2 higher. Revenue was at 27.5 billion
# yuen

rev = 27.5e9
pot.rev = 27.5e9*(1 - china[3, "Revenue_loss"]/100)
pot.rev
mg.dmg = function(x) {
  rev*(quadb + 2*quadx*x)
}

# Increase in damages

mg.dmg(1301) - mg.dmg(1300)
