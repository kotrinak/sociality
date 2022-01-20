Analysis materials for "Social integration predicts survival in female white-faced capuchin monkeys", by Kotrina Kajokaite, Andrew Whalen, Jeremy Koster and Susan Perry.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5885634.svg)](https://doi.org/10.5281/zenodo.5885634)


[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/80x15.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This code was written by Kotrina Kajokaite, Andrew Whalen, and Jeremy Koster and is available under Creative Commons [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). See LICENSE.md for details.


# Requirements

- R (3.6.2 or greater) https://cran.r-project.org/
- rethinking package (v2.19.2 or greater), http://xcelab.net/rm/software/
- rstan package
- daggity package (for DAG)
- ggplot2 package (for figures)
- grid package (for figures)
- xtable (for tables)

# Instructions:

In R, set the working directory to that containing this readme file. For example, on a Mac or Linux machine, you might type into the command prompt

```
  setwd('~/Desktop/Sociality')
```

if the folder containing the project is named 'Sociality' and on your Desktop. 

The analysis itself is broken up into independent modules and can be replicated by running "Run_all.R" script.


If all goes well, each step of the analysis will execute in sequence, and write the final tables and figures into the same folder as everything else. 

The total time until completion will vary by machine but should take several hours. Social Relations Models take longer to fit than anything else.

The project is maintained by Kotrina Kajokaite (kotrina@gmail.com) and is hosted at https://github.com/kotrinak.

# To-Dos

- add t-1 script
- supplement figure scripts