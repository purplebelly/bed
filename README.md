# Need help streaming/spawning a YDR file

Hello, long time developer here but pretty new to FiveM. I'm hoping someone can point me in the right direction as I've been trying to figure this out all day.

What I would like to do is spawn this object in the world (it's from the motel at coords: 152.2605, -1004.471, -98.99999)

![Motel Bed](https://forum.fivem.net/uploads/default/original/3X/f/5/f5a82f5fcc4ae764395eb071731f3259968ffbdc.jpg)


I created a very basic resource to try and test this. When the resouce is loaded, press the `HOME` button and it will spawn you in the airport and attempt to create the bed, a tower and some garbage bags. I'm testing the bed and tower because one is a YDR file and the other is a YFT file.

Here are my results:
![GTA5 Console](https://forum.fivem.net/uploads/default/original/3X/0/7/071ba10253d1e21d58a67c48ab59575b5af4d8e8.jpg)

As you can see only the garbage bags appear. The bed and tower do not.

Is there something I'm doing wrong? I thought FiveM will see those new models if they're in a `stream` directory. Do I need to convert the files or tell FiveM about them in my `__resource.lua` file?

Any help or direction on this would be helpful.

Thanks!