# T01 — How Computers Work

This beginner-first GitHub companion explains the major parts of a computer and gives you practical exercises using your own machine.

## Learning goals

By the end, you should be able to explain:

- input, processing, storage, and output
- CPU, cores, and clock speed at a beginner level
- RAM and why programs need it
- RAM vs long-term storage
- HDD vs SSD
- bits, bytes, KB, MB, GB, and TB
- input and output devices
- the motherboard's basic role
- CPU vs GPU vs NPU
- the operating system's role
- program vs process
- what happens when an application starts
- computer startup at a high level
- 32-bit vs 64-bit at recognition level
- personal computers vs servers
- virtual machines vs containers at recognition level
- why hardware needs vary by career

## Prerequisites

Complete [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/).

No software installation is required.

## Core mental model

**Input → Processing → Output**, supported by **RAM and storage**.

See [computer-big-picture.mmd](diagrams/computer-big-picture.mmd).

## CPU

The CPU executes instructions and performs general-purpose processing.

**CPU = general-purpose processing engine**

Modern CPUs usually contain multiple cores. More cores can help workloads that can use them effectively, but more cores do not automatically make every task proportionally faster.

Clock speed is commonly expressed in GHz. Do not use “higher GHz = always faster” as a comparison rule; architecture, generation, cores, cache, power limits, and workload also matter.

## RAM

RAM is temporary working memory used by running programs.

**RAM = temporary working space**

Opening browsers, Excel, Power BI, VS Code, and other applications consumes memory. RAM is normally volatile, so its contents do not persist when power is removed.

## Storage

Storage keeps programs and files long-term.

Common technologies:

- HDD — magnetic storage with mechanical components
- SSD — solid-state flash storage

SSDs generally provide much faster access than traditional HDDs.

## RAM vs storage

| RAM | Storage |
|---|---|
| Temporary working memory | Long-term data storage |
| Used by running programs | Holds files and installed programs |
| Normally volatile | Non-volatile |
| Typically smaller | Typically larger |

See [cpu-memory-storage.mmd](diagrams/cpu-memory-storage.mmd).

## Bits and bytes

A bit is a binary digit: `0` or `1`.

A byte is commonly eight bits.

You will encounter B, KB, MB, GB, and TB. Binary units such as KiB, MiB, and GiB exist too, but that distinction can wait.

## Input and output

Input examples: keyboard, mouse, microphone, camera, touchscreen, sensors.

Output examples: monitor, speakers, printer.

Some devices, such as touchscreens, do both.

## Motherboard

The motherboard is the main circuit board connecting major components.

For T01:

**Motherboard = major hardware connection platform**

## CPU, GPU, and NPU

- **CPU:** flexible general-purpose processing
- **GPU:** highly parallel processing useful for graphics and many ML workloads
- **NPU:** specialized acceleration for certain neural/AI workloads

A GPU is not faster than a CPU for every task, and you do not need an NPU to continue this learning series.

See [cpu-gpu-npu.mmd](diagrams/cpu-gpu-npu.mmd).

## Operating system

The operating system manages resources and provides services to applications. Responsibilities include processes, memory, files, devices, users, permissions, and networking.

## Program vs process

A **program** is stored software containing instructions.

A **process** is a running instance of a program.

## What happens when you open an application?

Simplified:

1. You launch it.
2. The operating system locates the program.
3. Required instructions/data are loaded from storage into RAM.
4. A running process is managed.
5. CPU time is scheduled.
6. Instructions execute.
7. The application interacts with devices, storage, networks, and other services as needed.

See [running-a-program.mmd](diagrams/running-a-program.mmd).

## What happens when the computer starts?

At a high level:

1. Power on.
2. Firmware starts.
3. Hardware is initialized.
4. A boot device is selected.
5. Operating-system boot begins.
6. Drivers and services initialize.
7. Login/desktop becomes available.

See [computer-startup.mmd](diagrams/computer-startup.mmd).

## 32-bit vs 64-bit

These labels relate to processor architecture and software environments. Most modern general-purpose computers use 64-bit environments.

When software offers architecture-specific downloads, check your system rather than guessing.

## Personal computer vs server

A server is a computer or software system that provides resources or services to other systems.

Examples include web, database, and file servers.

## Virtual machines and containers

A **virtual machine** provides a software-defined machine environment and typically runs its own operating system.

A **container** packages an application and dependencies in an isolated environment while sharing the host operating-system kernel.

Recognition is enough for T01.

## Career relevance

Developers commonly care about CPU responsiveness, RAM, SSD speed, and enough resources for development tools, databases, containers, or VMs.

Data Analysts commonly care about RAM for datasets/tools, fast storage, capable CPUs, and software-specific requirements.

ML Engineers may additionally need substantial memory, storage, and GPU acceleration for suitable workloads. Powerful remote cloud hardware can also be used.

You do not need an expensive workstation to begin.

## Practice

Complete:

- [Identify Your Computer](exercises/identify-your-computer.md)
- [Computer Components](exercises/computer-components.md)

Then compare with [example answers](solutions/computer-components-example.md).

## Additional resources

See [resources.md](resources.md).

## Next

**T02 — Files, Folders & Paths**
