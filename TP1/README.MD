TP1 : Are you dead yet ?

1)
J'accède à tous mes fichiers puis je les supprime tous et le tour est joué.

````
[root@localhost ~]# cd /
[root@localhost ~]# ls
[root@localhost ~]# rm -r *
````

2)
Je lance un script bash au démarrage qui rebbot donc la machine en boucle.

````
#!/bin/bash
/usr/sbin/reboot
````


![Panic](https://user-images.githubusercontent.com/114937860/203307387-946079b6-120c-405a-8d50-2a1d19e50ae2.gif)

Je n'ai pas trouvé d'autres solutions différentes de celles-ci.  
