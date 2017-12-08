lineardmg = lm(Revenue_loss ~ SO2_dep, data = china) # regression analysis

b = -1.358630 # create variables
x = 0.002157    # for the equation

y_bar = mean(china$Revenue_loss)

y_bar

china = mutate(china,
       var_y = Revenue_loss - y_bar,
       sqvar_y = (var_y^2),
       y_hat = x * SO2_dep + b,
       sqvar_fit = (y_hat - y_bar)^2,
       sqres = (Revenue_loss - y_hat)^2)

R_sqr = sum(china$sqvar_fit)/sum(china$sqvar_y)

R_sqr


