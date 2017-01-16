## What are some of the key design philosophies of the Linux operating system? In your own words, what is a VPS (virtual private server)?

> When Unix was being developed in the late 1960s, the developers were 
intent upon building an operating system that was significantly different from the
operating systems that preceded. 
The philosophy of Unix was markedly different from that 
of other operating systems. And the Linux philosophy is quite naturally derived directly
from the Unix philosophy.

*There are nine major tenets to the Linux philosophy.*

* Small is Beautiful
* Each Program Does One Thing Well
* Prototype as Soon as Possible
* Choose Portability Over Efficiency
* Store Data in Flat Text Files
* Use Software Leverage
* Use Shell Scripts to Increase Leverage and Portability
* Avoid Captive User Interfaces
* Make Every Program a Filter
[For more details](https://opensource.com/business/15/2/how-linux-philosophy-affects-you)


## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

> It is a virtual server that dedicated as server when its appear to the user but in 
reality its installed on a computer to serving multiple Web sites. each server has its own 
operating system that you can run it on that computer and install all the software needed 
and the users have access to that OS and the server one single computer can have several 
VPS, each one has its own operating system (OS)

*Advantages of using a VPS*

> * More stability and reliability for basic web hosting needs
* More control compared to shared hosting
* Green technology, environmentally friendly, and more efficient use of resources
* Easy scalability when needed
* Cost effective solutions for small websites

## Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

> login to the system using root cab easily wipe 
directories or do something that in retrospect is 
really dumb on the system with the flip of a finger,
while as a user you normally have to put a few extra 
mental cycles into what you're typing before doing 
something that is dangerous.
Also any program you run as root as root privileges, meaning if someone or something gets you to run/compile/browse a website that is dangerous and wants to damage your system, such as a trojan, it has full access to your system and can do what it wants.
