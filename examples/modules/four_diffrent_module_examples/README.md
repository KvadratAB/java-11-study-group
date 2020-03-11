# Module example with 4 different modules

In this example four different modules are compiled. 
The first is an old regular jar.
The second is an old regular jar with dependency to the first jar.
The third is a module which the fourth module uses.

If you run `build.sh` all will be compiled.
Four test runs will be performed.
1. In this example both first and second jar is put on the claspath, this results in both being put in the unnamed module.
2. In this example both first and secomd jar is put on the module path. This results in each jar being placed in an automatic module with name corresponding to the jar name.
3. In this example jar third and fourth are put on the class path. This will result in that the information in module info will be ignored and everything be put in the unnamed module.
4. In this example third and fourth are put in the module path and are there fore explicit modules (yay)
