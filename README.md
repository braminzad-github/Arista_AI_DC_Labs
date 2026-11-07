# AI Data Centre Networking Labs

A personal learning repository exploring advanced data centre networking, with a focus on the network foundations for high-bandwidth, lossless AI workloads and their relevance to Oracle AI infrastructure.

## About Me

I am a Cloud Architect with a network specialty background. I am also a Senior Lecturer and curriculum designer and developer at Swinburne University of Technology.

I created this repository to document my learning and explore data centre networking through practical experiments. I design, test, and modify these labs for my own learning and personal interest.

This work also helps me develop a deeper understanding of the infrastructure I propose to customers in my full-time role as a Cloud Architect. These are personal learning exercises, with no commercial or customer delivery purpose.

## Learning Focus

The main focus is advanced data centre networking for high-bandwidth, lossless AI workloads. I am interested in understanding how network architecture, configuration, and operational behaviour support demanding AI infrastructure.

The labs begin with the foundations of a spine-leaf data centre network and progress towards more complex designs and experiments. Each lab builds on the knowledge gained in earlier exercises.

## Repository Structure

This repository follows the order of my learning journey. I started by setting up the lab infrastructure, then designed exercises that progress from simple concepts to intermediate configurations and advanced, more challenging scenarios.

```text
.
├── README.md          # Repository introduction and learning approach
├── Lab_setup/         # Infrastructure preparation and lab environment setup
├── Lab01_VXLAN/       # VXLAN lab
└── ...                # Additional labs as my learning progresses
```

Each lab folder contains its own README with the relevant objectives, topology, setup instructions, configurations, verification steps, and learning notes as they are developed.

## Where to Start

1. Begin with 00_Lab_Setup to prepare the infrastructure and lab environment.
2. Continue with 01_Lab01_VXLAN.
3. Work through subsequent labs in numerical order as they are added.

The initial environment uses a two-spine, four-leaf topology with Arista virtual network devices running in Docker on x86 hosts, managed through Containerlab.

## How I Use These Labs

My approach is to build a topology, configure it, verify its behaviour, and then modify it to understand how and why the results change. I record useful commands, observations, troubleshooting steps, and lessons learned along the way.

The repository will evolve as I learn. Earlier labs may be revised as I test different approaches and develop a better understanding of the underlying concepts.

## Scope

These labs are personal experiments and learning notes. They do not represent official guidance from Oracle, Arista, Swinburne University of Technology, or my employer, and they are not production deployment instructions.
