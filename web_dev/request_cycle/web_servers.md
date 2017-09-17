1. What are some of the key design philosophies of the Linux operating system?
    - The linux software model does not abide by an entire concept of organized development, structured bug reporting, or source control systems. It is designed with an open-ended, feature-minded approach. There is no 'one' organization responsible for the development of Linux. Anyone has the opportunity to help develop and debug the "kernel" which is the central component of the operating system. One can also port new software, write documentation and help new users. A new version of the kernel is released every few weeks and is written from scratch, without code from other proprietary sources. This is all volunteer based, and because of this, Linux development is about free UNIX implementation. 

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
    - A VPS is a server that is virtual and appears to the user as a dedicated server, though it is actually installed on a different computer that serves multiple websites. A computer can have many virtual private servers, each with their own OS that runs the hosting software for the user. The advantages of using a VPS are that it is a low cost alternative to a dedicated server. It is also a more efficient use of the data center's space and power resources. With a VPS there is more scalability-- if you need more RAM, CPU or hard disk space, VPS hosting makes it easier to upgrade without server downtime. With dedicated servers, there is often manual intervention that is required for changes or upgrades. This is not necessary with a VPS as you can make changes instantly yourself. A user also has more flexibility with OS choice and software that is installed on the server when using a VPS. 


3. Why is it considered a bad idea to run programs as the root user on a Linux system?
    - It is considered a bad idea to run programs as the ROOT user because it can compromise the security of your server. Applications are meant to be run with non-administrative security. You wouldn't want any kind of crash or bug to wipe out your directory or accidentally allow an attacker to gain a ROOT shell. Applications should be ran on a user level, with administrative tasks left to the ROOT user on an as-needed basis. 