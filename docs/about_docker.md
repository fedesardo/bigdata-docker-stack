![novakorp](../img/logo_horizontal.png)

# Table of Content
- [Table of Content](#table-of-content)
- [What is docker?](#what-is-docker)
- [Containers in a nutshell](#containers-in-a-nutshell)
- [Containers vs Virtual Machines](#containers-vs-virtual-machines)
- [Docker Platform](#docker-platform)
- [More info](#more-info)
- [Volumes](#volumes)



# What is docker?
>  Docker is a container technology: A tool for creating and managing containers.



# Containers in a nutshell
A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

A container is a runtime instance of an image—what the image becomes in memory when actually executed. It runs completely isolated from the host environment by default, only accessing host files and ports if configured to do so.  

Containers isolate software from its environment and ensure that it works uniformly despite differences for instance between development and staging.

Docker containers that run on Docker Engine:

- **Standard:** Docker created the industry standard for containers, so they could be portable anywhere.  

- **Lightweight:** Containers share the machine’s OS system kernel and therefore do not require an OS per application, driving higher server efficiencies and reducing server and licensing costs.  
  
- **Secure:** Applications are safer in containers and Docker provides the strongest default isolation capabilities in the industry

# Containers vs Virtual Machines

![novakorp](../img/containers-vs-virtual-machines.jpg)


Containers run apps natively on the host machine’s kernel. They have better performance characteristics than virtual machines that only get virtual access to host resources through a hypervisor. Containers can get native access, each one running in a discrete process, taking no more memory than any other executable.

# Docker Platform

# More info
If you want to improve your knowledge this articles could help you:

- Docker and Kubernetes: The practical guide : https://www.udemy.com/share/103Ia02@PkdjVEtgc1cMdUBHCnFxVD1uYFdLYw==/
- Docker tutorial, just run: *docker run -d -p 80:80 docker/getting-started* and visit localhost:80 in your computer.  
  
  
# Volumes
They are folder on your host machine hard drive which are mounted into containers. Volumes allows us to persist data since they also persist if a containers shuts down. Is the containers (re)start and (re)mount the volume the data inside it will be there for you in the container.  

